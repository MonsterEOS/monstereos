/**
 * Monster ID to 3D Matrix Conversion
 */

import profileConfig from "./monsterTypeConfiguration"

export const monsterDecors = {
  neutral: {
    shader: {
      diffuse: 0x808080,
      emissive: 0x000000,
      hue: 0.0,
      saturation: 1.2,
      rimPower: 0.4,
      rimIntensity: 0.2,
      rimColor: 0x00aedb,
    }
  },
  animal: {
    shader: {
      diffuse: 0x809080,
      emissive: 0x000000,
      hue: 0.0,
      saturation: 2.0,
      rimPower: 0.4,
      rimIntensity: 1.0,
      rimColor: 0xA1B41B,
    }
  },
  fire: {
    shader: {
      diffuse: 0xff5555,
      emissive: 0x211111,
      hue: 0.0,
      saturation: 1.2,
      rimPower: 0.5,
      rimIntensity: 3.0,
      rimColor: 0xff3311,
    }
  },
  ice: {
    shader: {
      diffuse: 0x8888ee,
      emissive: 0x000000,
      hue: 0.0,
      saturation: 0.5,
      rimPower: 0.4,
      rimIntensity: 2.0,
      rimColor: 0x00aeeb,
    }
  },
  metal: {
    shader: {
      diffuse: 0x555577,
      emissive: 0x222222,
      hue: 0.0,
      saturation: 0.3,
      rimPower: 0.3,
      rimIntensity: 1.0,
      rimColor: 0xffffff,
    }
  },
  poison: {
    shader: {
      diffuse: 0xA69752,
      emissive: 0x000000,
      hue: 0.0,
      saturation: 1.0,
      rimPower: 0.8,
      rimIntensity: 0.0,
      rimColor: 0xB9FF2C,
    }
  },
  water: {
    shader: {
      diffuse: 0x2790B0,
      emissive: 0x111122,
      hue: 0.0,
      saturation: 1.0,
      rimPower: 0.8,
      rimIntensity: 0.0,
      rimColor: 0x55C3DC,
    }
  },
  earth: {
    shader: {
      diffuse: 0x764C22,
      emissive: 0x222222,
      hue: 0.0,
      saturation: 1.0,
      rimPower: 0.6,
      rimIntensity: 1.0,
      rimColor: 0xCDA658,
    }
  },
  wood: {
    shader: {
      diffuse: 0x574632,
      emissive: 0x574632,
      hue: 0.0,
      saturation: 0.2,
      rimPower: 0.9,
      rimIntensity: 1.0,
      rimColor: 0xBBA37D,
    }
  },
  light: {
    shader: {
      diffuse: 0xFBB829,
      emissive: 0x111111,
      hue: 0.0,
      saturation: 0.4,
      rimPower: 0.6,
      rimIntensity: 3.0,
      rimColor: 0xFBB829,
    }
  },
  undead: {
    shader: {
      diffuse: 0x808080,
      emissive: 0x111111,
      hue: 0.0,
      saturation: 0.2,
      rimPower: 0.1,
      rimIntensity: -0.3,
      rimColor: 0x00aedb,
    }
  },
/** DEATH */
  dead: {
    shader: {
      diffuse: 0x808080,
      emissive: 0x000000,
      hue: 0.0,
      saturation: 0.1,
      rimPower: 0.4,
      rimIntensity: 0.2,
      rimColor: 0x00aedb,
    }
  },
/** CUSTOM COLORS */
  iceblue: {
    shader: {
      diffuse: 0x88E7EE,
      emissive: 0x66ADB3,
      hue: 0.0,
      saturation: 0.6,
      rimPower: 0.4,
      rimIntensity: 0.2,
      rimColor: 0x00aedb,
    }
  },
  brown: {
    shader: {
      diffuse: 0x7B0A20,
      emissive: 0x000000,
      hue: 0.0,
      saturation: 1.2,
      rimPower: 0.4,
      rimIntensity: 0.2,
      rimColor: 0x00aedb,
    }
  },
  purple: {
    shader: {
      diffuse: 0xFF00F9,
      emissive: 0x40003E,
      hue: 0.0,
      saturation: 1.0,
      rimPower: 0.4,
      rimIntensity: 0.2,
      rimColor: 0x00aedb,
    }
  },
  green: {
    shader: {
      diffuse: 0x21FF00,
      emissive: 0x084000,
      hue: 0.0,
      saturation: 1.0,
      rimPower: 0.4,
      rimIntensity: 0.2,
      rimColor: 0x00aedb,
    }
  },
  red: {
    shader: {
      diffuse: 0xFF0000,
      emissive: 0x400000,
      hue: 0.0,
      saturation: 1.0,
      rimPower: 0.4,
      rimIntensity: 0.2,
      rimColor: 0x00aedb,
    }
  },
}

export default (type: number, isDead = false) => {
  const t = true ? 9999 : type
  let config: any
  switch (t) {
    case 0:
    case 1:
    case 2:
      config = {
        ...profileConfig("bat")
      }
      break
    case 3:
    case 4:
    case 5:
    case 39:
    case 40:
    case 41:
      config = {
        ...profileConfig("wolf")
      }
      break
    case 6:
    case 7:
    case 8:
      config = {
        ...profileConfig("serpent")
      }
      break
    case 9:
    case 10:
    case 11:
      config = {
        ...profileConfig("beetle")
      }
      break
    case 12:
    case 13:
    case 14:
      config = {
        ...profileConfig("worm")
      }
      break
    case 15:
      config = {
        ...profileConfig("tree"),
        decor: monsterDecors.neutral
      }
      break
    case 16:
      config = {
        ...profileConfig("tree"),
        decor: monsterDecors.purple
      }
      break
    case 17:
      config = {
        ...profileConfig("tree"),
        decor: monsterDecors.brown
      }
      break
    case 18:
    case 19:
    case 20:
      config = {
        ...profileConfig("butterfly")
      }
      break
    case 21:
      config = {
        ...profileConfig("toad"),
        decor: monsterDecors.neutral
      }
      break
    case 22:
      config = {
        ...profileConfig("toad"),
        decor: monsterDecors.fire
      }
      break
    case 23:
      config = {
        ...profileConfig("toad"),
        decor: monsterDecors.purple
      }
      break
    case 24:
    case 25:
    case 26:
      config = {
        ...profileConfig("frog")
      }
      break
    case 27:
      config = {
        ...profileConfig("ghost"),
        decor: monsterDecors.metal
      }
      break
    case 28:
      config = {
        ...profileConfig("ghost"),
        decor: monsterDecors.neutral
      }
      break
    case 29:
      config = {
        ...profileConfig("ghost"),
        decor: monsterDecors.fire
      }
      break
    case 30:
      config = {
        ...profileConfig("dwarf"),
        decor: monsterDecors.wood
      }
      break
    case 31:
      config = {
        ...profileConfig("dwarf"),
        decor: monsterDecors.red
      }
      break
    case 32:
      config = {
        ...profileConfig("dwarf"),
        decor: monsterDecors.neutral
      }
      break
    case 36:
      config = {
        ...profileConfig("dwarf"),
        decor: monsterDecors.green
      }
      break
    case 37:
      config = {
        ...profileConfig("dwarf"),
        decor: monsterDecors.purple
      }
      break
    case 38:
      config = {
        ...profileConfig("dwarf"),
        decor: monsterDecors.poison
      }
      break
    case 33:
    case 34:
    case 35:
      config = {
        ...profileConfig("bad-chicken")
      }
      break
    case 42:
      config = {
        ...profileConfig("troll"),
        decor: monsterDecors.green
      }
      break
    case 43:
      config = {
        ...profileConfig("troll"),
        decor: monsterDecors.neutral
      }
      break
    case 44:
      config = {
        ...profileConfig("troll"),
        decor: monsterDecors.undead
      }
      break
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
      config = {
        ...profileConfig("penguin")
      }
      break
    case 51:
      config = {
        ...profileConfig("ogre"),
        decor: monsterDecors.fire
      }
      break
    case 52:
      config = {
        ...profileConfig("ogre"),
        decor: monsterDecors.water
      }
      break
    case 53:
      config = {
        ...profileConfig("ogre"),
        decor: monsterDecors.undead
      }
      break
    case 99:
      config = {
        ...profileConfig("ogre"),
        decor: monsterDecors.neutral
      }
      break
    case 100:
      config = {
        ...profileConfig("ogre"),
        decor: monsterDecors.light
      }
      break
    case 101:
      config = {
        ...profileConfig("ogre"),
        decor: monsterDecors.red
      }
      break
    case 54:
      config = {
        ...profileConfig("minion"),
        decor: monsterDecors.water,
      }
      break
    case 55:
      config = {
        ...profileConfig("minion"),
        decor: monsterDecors.neutral,
      }
      break
    case 56:
      config = {
        ...profileConfig("minion"),
        decor: monsterDecors.metal,
      }
      break
    case 57:
    case 58:
    case 59:
      config = {
        ...profileConfig("ness")
      }
      break
    case 60:
    case 61:
    case 62:
      config = {
        ...profileConfig("tucan")
      }
      break
    // case 63:
    // case 64:
    // case 65:
    //     config = {
    //         ...profileConfig("cerberus")
    //     }
    //     break
    case 66:
      config = {
        ...profileConfig("baal"),
        decor: monsterDecors.purple,
      }
      break
    case 67:
      config = {
        ...profileConfig("baal"),
        decor: monsterDecors.neutral,
      }
      break
    case 68:
      config = {
        ...profileConfig("baal"),
        decor: monsterDecors.metal,
      }
      break
    case 102:
      config = {
        ...profileConfig("baal"),
        decor: monsterDecors.fire,
      }
      break
    case 103:
      config = {
        ...profileConfig("baal"),
        decor: monsterDecors.green,
      }
      break
    case 104:
      config = {
        ...profileConfig("baal"),
        decor: monsterDecors.undead,
      }
      break
    case 69:
    case 70:
    case 71:
      config = {
        ...profileConfig("metal-guitar")
      }
      break
    case 72:
    case 73:
    case 74:
      config = {
        ...profileConfig("rock-worm")
      }
      break
    case 75:
    case 76:
    case 77:
      config = {
        ...profileConfig("spider")
      }
      break
    case 78:
    case 79:
    case 80:
      config = {
        ...profileConfig("scorpion")
      }
      break
    case 81:
    case 82:
    case 83:
      config = {
        ...profileConfig("the-thing")
      }
      break
    case 84:
      config = {
        ...profileConfig("egg"),
        decor: monsterDecors.neutral
      }
      break
    case 85:
      config = {
        ...profileConfig("egg"),
        decor: monsterDecors.water
      }
      break
    case 86:
      config = {
        ...profileConfig("egg"),
        decor: monsterDecors.undead
      }
      break
    case 87:
      config = {
        ...profileConfig("rocky"),
        decor: monsterDecors.neutral
      }
      break
    case 88:
      config = {
        ...profileConfig("rocky"),
        decor: monsterDecors.iceblue
      }
      break
    case 89:
      config = {
        ...profileConfig("rocky"),
        decor: monsterDecors.fire
      }
      break
    case 93:
      config = {
        ...profileConfig("bear"),
        decor: monsterDecors.neutral
      }
      break
    case 94:
      config = {
        ...profileConfig("bear"),
        decor: monsterDecors.undead
      }
      break
    case 95:
      config = {
        ...profileConfig("bear"),
        decor: monsterDecors.ice
      }
      break
    case 96:
    case 97:
    case 98:
      config = {
        ...profileConfig("cactus")
      }
      break
    case 105:
    case 106:
    case 107:
    case 108:
      config = {
        ...profileConfig("devil")
      }
      break
    default: config = {
      ...profileConfig("toad"),
      decor: monsterDecors.fire
    }
  }

  if (isDead) {
    return { ...config, decor: monsterDecors.dead }
  } else if (!config.decor) {
    return { ...config, decor: monsterDecors.neutral }
  } else {
    return config
  }
}