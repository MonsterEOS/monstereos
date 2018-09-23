/**
 * Monster ID to 3D Matrix Conversion
 */

import profileConfig from "./monsterTypeConfiguration"

export default (type: number) => {
    // const t = true ? 105 : type
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
                ...profileConfig("wolf")
            }
        case 6:
        case 7:
        case 8:
            return {
                ...profileConfig("serpent")
            }
        case 9:
        case 10:
        case 11:
            return {
                ...profileConfig("beetle")
            }
        case 12:
        case 13:
        case 14:
            return {
                ...profileConfig("worm")
            }
        case 15:
        case 16:
        case 17:
            return {
                ...profileConfig("tree")
            }
        case 18:
        case 19:
        case 20:
            return {
                ...profileConfig("butterfly")
            }
        case 21:
        case 22:
        case 23:
            return {
                ...profileConfig("toad")
            }
        case 24:
        case 25:
        case 26:
            return {
                ...profileConfig("frog")
            }
        case 27:
        case 28:
        case 29:
            return {
                ...profileConfig("ghost")
            }
        case 30:
        case 31:
        case 32:
        case 36:
        case 37:
        case 38:
            return {
                ...profileConfig("dwarf")
            }
        case 33:
        case 34:
        case 35:
            return {
                ...profileConfig("bad-chicken")
            }
        case 42:
        case 43:
        case 44:
            return {
                ...profileConfig("troll")
            }
        case 45:
        case 46:
        case 47:
        case 48:
        case 49:
        case 50:
            return {
                ...profileConfig("penguin")
            }
        case 51:
        case 52:
        case 53:
        case 99:
        case 100:
        case 101:
            return {
                ...profileConfig("ogre")
            }
        case 54:
        case 55:
        case 56:
            return {
                ...profileConfig("minion")
            }
        case 57:
        case 58:
        case 59:
            return {
                ...profileConfig("ness")
            }
        case 60:
        case 61:
        case 62:
            return {
                ...profileConfig("tucan")
            }
        case 66:
        case 67:
        case 68:
        case 102:
        case 103:
        case 104:
            return {
                ...profileConfig("baal")
            }
        case 69:
        case 70:
        case 71:
            return {
                ...profileConfig("metal-guitar")
            }
        case 72:
        case 73:
        case 74:
            return {
                ...profileConfig("rock-worm")
            }
        case 75:
        case 76:
        case 77:
            return {
                ...profileConfig("spider")
            }
        case 78:
        case 79:
        case 80:
            return {
                ...profileConfig("scorpion")
            }
        case 81:
        case 82:
        case 83:
            return {
                ...profileConfig("the-thing")
            }
        case 84:
        case 85:
        case 86:
            return {
                ...profileConfig("egg")
            }
        case 87:
        case 88:
        case 89:
            return {
                ...profileConfig("serpent")
            }
        case 93:
        case 94:
        case 95:
            return {
                ...profileConfig("bear")
            }
        case 96:
        case 97:
            return {
                ...profileConfig("cactus")

            }
        case 98:
            return {
                ...profileConfig("cactus")
            }
        case 105:
        case 106:
        case 107:
        case 108:
            return {
                ...profileConfig("devil")
            }
        default: return {
            ...profileConfig("duck")
        }
    }
}