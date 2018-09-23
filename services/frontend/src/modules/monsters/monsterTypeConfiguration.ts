/**
 * ideal configuration for every monster 3D model.
 */
export default (model: string) => {
    switch (model) {
        case "tucan":
            return {
                model,
                position: { y: -50 },
                rotation: { y: 0 },
                cameraPosition: { z: -30 }
            }
        case "devil":
            return {
                model,
                position: { y: -20 },
                rotation: { y: 0 },
                cameraPosition: { z: -120 }
            }
        case "ogre":
            return {
                model,
                position: { y: -30, x: 20 },
                rotation: { y: 0 },
                cameraPosition: { z: -150 }
            }
        case "ness":
            return {
                model,
                position: { y: 0 },
                rotation: { y: 0 },
                cameraPosition: { z: -340 }
            }
        case "rock-worm":
            return {
                model,
                position: { y: -110 },
                rotation: { y: 0 },
                cameraPosition: { z: -800 }
            }
        case "rocky":
            return {
                model,
                position: { y: 0, x: 20 },
                rotation: { y: 0 },
                cameraPosition: { z: -150 }
            }
        case "the-thing":
            return {
                model,
                position: { y: 0, x: 0 },
                rotation: { y: 0 },
                cameraPosition: { z: -30 }
            }
        case "tree":
            return {
                model,
                position: { y: 10, x: 0 },
                rotation: { y: 0 },
                cameraPosition: { z: -200 }
            }
        case "metal-guitar":
            return {
                model,
                position: { y: 0, x: 0 },
                rotation: { y: 0 },
                cameraPosition: { z: -165 }
            }
        case "ghost":
            return {
                model,
                position: { y: -30 },
                rotation: { y: 0 },
                cameraPosition: { z: -40 }
            }
        case "dwarf":
            return {
                model,
                position: { y: 0, x: 0 },
                rotation: { y: 0 },
                cameraPosition: { z: -75 }
            }
        case "cactus":
            return {
                model,
                position: { y: 0 },
                rotation: { y: 0 },
                cameraPosition: { z: -100 }
            }
        case "butterfly":
            return {
                model,
                position: { y: -70, x: 0 },
                rotation: { y: 0 },
                cameraPosition: { z: -70 }
            }
        case "bear":
            return {
                model,
                position: { y: -10, x: 0 },
                rotation: { y: 0 },
                cameraPosition: { z: -250 }
            }
        case "serpent":
            return {
                model,
                position: { y: -20, x: 0 },
                rotation: { y: 0 },
                cameraPosition: { z: -90 }
            }
        default:
            return {
                model,
                position: { y: 0, x: 0 },
                rotation: { y: 0 },
                cameraPosition: { z: -40 }
            }
    }
}