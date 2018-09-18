/**
 * ideal configuration for every monster 3D model.
 */
export default (type: number) => {
    switch (type) {
        case 0:
            return {
                position: { y: -50 },
                rotation: { y: Math.PI },
                cameraPosition: { z: -30 }
            }
        case 1:
            return {
                position: { y: -20 },
                rotation: {},
                cameraPosition: { z: -120 }
            }
        case 2:
            return {
                position: { y: -30, x: 20 },
                rotation: { y: Math.PI },
                cameraPosition: { z: -150 }
            }
        case 3:
            return {
                position: { y: 0 },
                rotation: { y: Math.PI },
                cameraPosition: { z: -340 }
            }
        case 4:
            return {
                position: { y: -110 },
                rotation: { y: Math.PI * 1.1, x: 0.2 },
                cameraPosition: { z: -800 }
            }
        case 5:
            return {
                position: { y: 0, x: 20 },
                rotation: { y: Math.PI },
                cameraPosition: { z: -150 }
            }
        case 6:
            return {
                position: { y: 0, x: 0 },
                rotation: { y: Math.PI * 0.8 },
                cameraPosition: { z: -80 }
            }
        case 7:
            return {
                position: { y: 10, x: 0 },
                rotation: { y: Math.PI },
                cameraPosition: { z: -200 }
            }
        case 8:
            return {
                position: { y: 0, x: 0 },
                rotation: { y: Math.PI },
                cameraPosition: { z: -165 }
            }
        case 9:
            return {
                position: { y: -30 },
                rotation: { y: Math.PI },
                cameraPosition: { z: -40 }
            }
        case 10:
            return {
                position: { y: 0, x: 0 },
                rotation: { y: 0 },
                cameraPosition: { z: -75 }
            }
        case 11:
            return {
                position: { y: 0 },
                rotation: { y: Math.PI * 0.9 },
                cameraPosition: { z: -100 }
            }
        case 12:
            return {
                position: { y: -70, x: 0 },
                rotation: { y: Math.PI },
                cameraPosition: { z: -70 }
            }
        case 13:
            return {
                position: { y: -10, x: 0 },
                rotation: { y: Math.PI * 1.1 },
                cameraPosition: { z: -250 }
            }
        default:
            return {
                position: { y: 0, x: 0 },
                rotation: { y: Math.PI },
                cameraPosition: { z: -150 }
            }
    }
}