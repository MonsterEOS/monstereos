/**
 * Monster ID to 3D Matrix Conversion
 */

import profileConfig from "./monsterTypeConfiguration"

export default (type: number) => {
    switch (type) {
        case 0:
        case 1:
        case 2:
            return {
                ...profileConfig("bat")
            }
        case 3:
        case 4:
        case 5:
        case 39:
        case 40:
        case 41:
            return {
                ...profileConfig("bat")
            }
        case 6:
        case 7:
        case 8:
            return {
                ...profileConfig("serpent")
            }
        default: return {
            ...profileConfig("duck")
        }
    }
}