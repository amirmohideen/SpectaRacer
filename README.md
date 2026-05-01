# SpectaRun

> An AR endless runner built for Snap Spectacles — dodge trees, collect coins, and race the clock in the real world.

SpectaRun is a fully playable, production-quality endless runner lens for Snap Spectacles. Three lanes of obstacles and collectibles scroll toward the player at an ever-increasing speed. Survive as long as possible, rack up coins, and track your distance — all overlaid on your real environment.

---

## Features

- **3-lane endless runner** with procedurally selected obstacle/coin patterns
- **Adaptive difficulty** — speed and pattern complexity ramp smoothly over 120 seconds
- **Full game loop** — main menu → gameplay → pause → game over → restart, with no reloads
- **Live HUD** — real-time damage percentage, distance in metres, and coin score
- **Weather toggle** — enable or disable an environmental effect mid-game from the pause menu
- **Spatial audio** — distinct coin collect and crash sound effects; ambient rain that respects menu state
- **Complete menu system** — four panels (main menu, pause, tutorial, game over) wired entirely in TypeScript with no Inspector callbacks
- **Singleton architecture** — `PlayPauseManager` and `SnapSaberGlobalManager` accessible from anywhere via `getInstance()`

---

## Gameplay

| Action | Result |
|---|---|
| Drive into a coin | Score increases, coin SFX plays |
| Collide with a tree | Damage +33%, crash SFX plays |
| Three tree hits | Game over — Panel 4 appears |
| Press pause button | Game freezes, pause panel opens |
| Resume / Restart / Main Menu | All wired through the pause panel |

Three tree collisions end the run. The game over screen appears automatically and offers a one-tap restart or return to the main menu.

---

## Project Structure

```
SpectaRacer/
├── Assets/
│   ├── Examples/
│   │   ├── CustomUI/               # UIKit visual customisation scripts
│   │   │   ├── UIKitCustomVisualsRoundButton.ts
│   │   │   ├── UIKitCustomVisualsRectangleButton.ts
│   │   │   ├── UIKitCustomVisualsFrame.ts
│   │   │   ├── UIKitCustomVisualsSlider.ts
│   │   │   └── UIKitCustomVisualsSwitch.ts
│   │   └── MiniDemos/SnapSaber/TS/ # Core game scripts
│   │       ├── MainMenu.ts
│   │       ├── PlayPauseManager.ts
│   │       ├── SnapSaberGlobalManager.ts
│   │       ├── SnapSaberCollisionHandler.ts
│   │       ├── LanePatternController.ts
│   │       ├── CoinInstantiator.ts
│   │       ├── TreeInstantiator.ts
│   │       └── RoadInstantiator.ts
│   ├── Materials/                  # PBR materials
│   ├── Prefabs/                    # Coin, tree, and road tile prefabs
│   ├── Shader/                     # Custom .ss_graph shaders
│   └── Scene.scene
├── Packages/
│   ├── SpectaclesInteractionKit.lspkg
│   └── SpectaclesUIKit.lspkg
├── Support/
│   └── StudioLib.d.ts              # Lens Studio API type declarations
└── tsconfig.json
```

---

## Architecture

### Core Scripts

| Script | Responsibility |
|---|---|
| `MainMenu.ts` | Panel navigation (4 panels), level enable/disable, rain audio control, game lifecycle |
| `PlayPauseManager.ts` | Pause/resume/restart, HUD output (damage %, distance, score), game-over detection |
| `SnapSaberGlobalManager.ts` | Singleton — score tracking, damage strikes, coin/crash SFX |
| `SnapSaberCollisionHandler.ts` | Car collision detection, routes hits to GlobalManager |
| `LanePatternController.ts` | Wave-based pattern selection across 3 lanes, speed ramp, pause/resume/reset |
| `CoinInstantiator.ts` | Spawns and moves coin prefabs; end-zone cleanup via overlap collider |
| `TreeInstantiator.ts` | Spawns and moves tree prefabs; end-zone cleanup via overlap collider |
| `RoadInstantiator.ts` | Continuously spawns road tile prefabs at 0.5 s intervals |

### Design Patterns

**Singleton via global scope** — `SnapSaberGlobalManager` and `PlayPauseManager` register themselves in Lens Studio's `global` object on `onAwake`, providing type-safe `getInstance()` accessors to any script without creating inspector dependencies.

**Callback for cross-boundary events** — When damage reaches 100%, `PlayPauseManager` invokes an `onGameOver` callback registered by `MainMenu` at game start. This avoids a circular import between the two scripts while keeping the event flow explicit and traceable.

**Controller-owned pause** — `LanePatternController.pauseAll()` and `resumeAll()` freeze all nine lane instantiators (coins, trees, roads) in a single call. `PlayPauseManager` needs only one inspector reference wired to produce a complete, reliable freeze.

**Wave state machine** — `LanePatternController` cycles gap → wave → gap. Pattern pools are split into Easy, Medium, and Rest tiers. The difficulty weight shifts from 0 to 1 over `difficultyRampTime` seconds. A lane-switching enforcement rule tracks how many consecutive waves used the same safe lane and forces a rotation when the threshold is exceeded — keeping players active rather than camping.

---

## Setup

### Requirements

- [Lens Studio](https://ar.snap.com/lens-studio) 5.x or later
- Snap Spectacles (physical device) or the Spectacles simulator built into Lens Studio

### Opening the Project

1. Clone or download this repository.
2. Open Lens Studio.
3. Choose **File → Open Project** and select the `SpectaRacer/` folder.
4. Lens Studio resolves the packed `.lspkg` dependencies from the `Packages/` folder automatically — no install step needed.
5. Press **Play** in Lens Studio to run in the simulator, or push to a paired Spectacles device via the device panel.

> No npm, no build commands, no external services. Everything runs inside Lens Studio.

### Optional: TypeScript type-checking in your editor

The `tsconfig.json` is `noEmit` and exists solely for editor intelligence. To run a type check from the terminal:

```bash
cd SpectaRacer
npx tsc --noEmit
```

---

## Wiring Guide

The scene is pre-wired in `Scene.scene`. If you rebuild from scratch, every inspector slot carries a `@hint` tooltip. The critical connections are summarised below.

### MainMenu
> Must live on a SceneObject **outside** `LevelHandleMover` so it stays active while the level is disabled.

| Slot | Assign |
|---|---|
| `panel1` – `panel4` | Root SceneObject of each panel |
| `levelHandleMover` | The parent SceneObject for the entire level |
| `rainAudio` | `AudioComponent` on the MainMenu SceneObject |
| Button slots | Drag each `RectangleButton` component from its SceneObject |
| `weatherToggleSwitch` | The `Switch` component on the weather toggle |
| `weatherObject` | SceneObject to show/hide for the weather effect |

### PlayPauseManager
> Lives inside `LevelHandleMover`. Controls game logic only — no button wiring needed here.

| Slot | Assign |
|---|---|
| `laneController` | The `LanePatternController` SceneObject |
| `coinLeft/Middle/Right` | One `CoinInstantiator` per lane |
| `treeLeft/Middle/Right` | One `TreeInstantiator` per lane |
| `roadLeft/Middle/Right` | One `RoadInstantiator` per lane |
| `damageText` | Text component for the damage display |
| `distanceText` | Text component for the distance display |
| `scoreText` | Text component for the score display |

### Sound Effects

**Coin + crash SFX** — Add two `AudioComponent`s to the `SnapSaberGlobalManager` SceneObject. Assign one `.mp3` per component. Drag each component into the `coinAudio` and `treeAudio` slots on `SnapSaberGlobalManager`.

**Ambient rain** — Add one `AudioComponent` to the **MainMenu** SceneObject. Assign the rain `.mp3`. Set **Play On Awake → OFF** (the script controls playback). Drag it into the `rainAudio` slot on `MainMenu`. Rain plays during gameplay and game over, and pauses automatically when Panel 1 (main menu) or Panel 2 (pause) is visible.

---

## Customisation

### Difficulty Tuning

All parameters are exposed as `@input` fields on `LanePatternController` and adjustable in the Inspector without touching code.

| Field | Default | Effect |
|---|---|---|
| `initialMoveSpeed` | 100 | Starting speed (cm/s) |
| `maxMoveSpeed` | 300 | Peak speed after ramp |
| `speedRampTime` | 120 s | Time to reach max speed |
| `difficultyRampTime` | 120 s | Time until hard patterns dominate |
| `gapFrequency` | 5 | Insert a rest wave every N waves |
| `minCoinsPerWave` | 2 | Fewest coins per wave |
| `maxCoinsPerWave` | 6 | Most coins per wave |
| `gapDuration` | 1.5 s | Silence between waves |

### Adding Lane Patterns

Patterns are `number[3]` arrays inside `LanePatternController.ts`:

```
0 = EMPTY   1 = COIN   2 = TREE
```

Add entries to `PATTERNS_EASY`, `PATTERNS_MEDIUM`, or `PATTERNS_REST`. The safety invariant (at least one non-tree lane per pattern) is enforced by convention — every pattern in the library already satisfies it.

### Swapping Prefabs

Drop a replacement prefab into the `prefab` slot on any instantiator. The end-zone collision system identifies objects by name prefix (`CoinCube_`, `TreeCube_`, `RoadTile_`) — spawned instances keep these prefixes automatically since the instantiator sets the name on spawn.

---

## Package Versions

| Package | Version |
|---|---|
| SpectaclesInteractionKit | 0.17.2 |
| SpectaclesUIKit | 0.1.5 |
| SnapDecorators | 1.0.0 |
| Utilities | 1.0.0 |
| Lens Studio API target | 5.15.0 / Snapchat 13.60 |

---

## License

This project is submitted to the Spectacles Community Challenge under the Open Source category. You are free to use, modify, and build upon it. Attribution is appreciated but not required.
