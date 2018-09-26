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
  let config: any
  switch (type) {
    case 0:
    case 1:
    case 2:
      config = {
        ...profileConfig("bat")
      }
      break
    case 3:
      config = {
        ...profileConfig("wolf"),
        decor: monsterDecors.undead
      }
      break
    case 4:
      config = {
        ...profileConfig("wolf"),
        decor: monsterDecors.iceblue
      }
      break
    case 5:
      config = {
        ...profileConfig("wolf"),
        decor: monsterDecors.brown
      }
      break
    case 39:
      config = {
        ...profileConfig("wolf"),
        decor: monsterDecors.neutral
      }
      break
    case 40:
      config = {
        ...profileConfig("wolf"),
        decor: monsterDecors.fire
      }
      break
    case 41:
      config = {
        ...profileConfig("wolf"),
        decor: monsterDecors.metal
      }
      break
    case 6:
      config = {
        ...profileConfig("serpent"),
        decor: monsterDecors.green
      }
      break
    case 7:
      config = {
        ...profileConfig("serpent"),
        decor: monsterDecors.earth
      }
      break
    case 8:
      config = {
        ...profileConfig("serpent"),
        decor: monsterDecors.neutral
      }
      break
    case 9:
      config = {
        ...profileConfig("beetle"),
        decor: monsterDecors.ice,
      }
      break
    case 10:
      config = {
        ...profileConfig("beetle"),
        decor: monsterDecors.neutral,
      }
      break
    case 11:
      config = {
        ...profileConfig("beetle"),
        decor: monsterDecors.light,
      }
      break
    case 12:
      config = {
        ...profileConfig("worm"),
        decor: monsterDecors.fire,
      }
      break
    case 13:
      config = {
        ...profileConfig("worm"),
        decor: monsterDecors.neutral,
      }
      break
    case 14:
      config = {
        ...profileConfig("worm"),
        decor: monsterDecors.metal,
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
      config = {
        ...profileConfig("butterfly"),
        decor: monsterDecors.light
      }
      break
    case 19:
      config = {
        ...profileConfig("butterfly"),
        decor: monsterDecors.neutral
      }
      break
    case 20:
      config = {
        ...profileConfig("butterfly"),
        decor: monsterDecors.metal
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
      config = {
        ...profileConfig("bad-chicken"),
        decor: monsterDecors.ice
      }
      break
    case 25:
      config = {
        ...profileConfig("bad-chicken"),
        decor: monsterDecors.neutral
      }
      break
    case 26:
      config = {
        ...profileConfig("bad-chicken"),
        decor: monsterDecors.metal
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
        decor: monsterDecors.green
      }
      break
    case 31:
      config = {
        ...profileConfig("dwarf"),
        decor: monsterDecors.purple
      }
      break
    case 32:
      config = {
        ...profileConfig("dwarf"),
        decor: monsterDecors.poison
      }
      break
    case 36:
      config = {
        ...profileConfig("dwarf"),
        decor: monsterDecors.wood
      }
      break
    case 37:
      config = {
        ...profileConfig("dwarf"),
        decor: monsterDecors.red
      }
      break
    case 38:
      config = {
        ...profileConfig("dwarf"),
        decor: monsterDecors.neutral
      }
      break
    case 33:
      config = {
        ...profileConfig("bad-chicken"),
        decor: monsterDecors.fire
      }
      break
    case 34:
      config = {
        ...profileConfig("bad-chicken"),
        decor: monsterDecors.water
      }
      break
    case 35:
      config = {
        ...profileConfig("bad-chicken"),
        decor: monsterDecors.purple
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
      config = {
        ...profileConfig("penguin"),
        decor: monsterDecors.animal
      }
      break
    case 46:
      config = {
        ...profileConfig("penguin"),
        decor: monsterDecors.light
      }
      break
    case 47:
      config = {
        ...profileConfig("penguin"),
        decor: monsterDecors.undead
      }
      break
    case 48:
      config = {
        ...profileConfig("frog"),
        decor: monsterDecors.undead
      }
      break
    case 49:
      config = {
        ...profileConfig("frog"),
        decor: monsterDecors.neutral
      }
      break
    case 50:
      config = {
        ...profileConfig("frog"),
        decor: monsterDecors.red
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
      config = {
        ...profileConfig("ness"),
        decor: monsterDecors.earth,
      }
      break
    case 58:
      config = {
        ...profileConfig("ness"),
        decor: monsterDecors.red,
      }
      break
    case 59:
      config = {
        ...profileConfig("ness"),
        decor: monsterDecors.purple,
      }
      break
    case 60:
      config = {
        ...profileConfig("tucan"),
        decor: monsterDecors.undead,
      }
      break
    case 61:
      config = {
        ...profileConfig("tucan"),
        decor: monsterDecors.fire,
      }
      break
    case 62:
      config = {
        ...profileConfig("tucan"),
        decor: monsterDecors.purple,
      }
      break
    case 63:
      config = {
        ...profileConfig("cerberus"),
        decor: monsterDecors.fire,
      }
      break
    case 64:
      config = {
        ...profileConfig("cerberus"),
        decor: monsterDecors.ice,
      }
      break
    case 65:
      config = {
        ...profileConfig("cerberus"),
        decor: monsterDecors.light,
      }
      break
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
      config = {
        ...profileConfig("metal-guitar"),
        decor: monsterDecors.undead,
      }
      break
    case 70:
      config = {
        ...profileConfig("metal-guitar"),
        decor: monsterDecors.light,
      }
      break
    case 71:
      config = {
        ...profileConfig("metal-guitar"),
        decor: monsterDecors.neutral,
      }
      break
    case 72:
      config = {
        ...profileConfig("rock-worm"),
        decor: monsterDecors.neutral
      }
      break
    case 73:
      config = {
        ...profileConfig("rock-worm"),
        decor: monsterDecors.fire
      }
      break
    case 74:
      config = {
        ...profileConfig("rock-worm"),
        decor: monsterDecors.undead
      }
      break
    case 75:
      config = {
        ...profileConfig("spider"),
        decor: monsterDecors.ice,
      }
      break
    case 76:
      config = {
        ...profileConfig("spider"),
        decor: monsterDecors.fire,
      }
      break
    case 77:
      config = {
        ...profileConfig("spider"),
        decor: monsterDecors.metal,
      }
      break
    case 78:
      config = {
        ...profileConfig("scorpion"),
        decor: monsterDecors.fire,
      }
      break
    case 79:
      config = {
        ...profileConfig("scorpion"),
        decor: monsterDecors.neutral,
      }
      break
    case 80:
      config = {
        ...profileConfig("scorpion"),
        decor: monsterDecors.undead,
      }
      break
    case 81:
      config = {
        ...profileConfig("the-thing"),
        decor: monsterDecors.metal
      }
      break
    case 82:
      config = {
        ...profileConfig("the-thing"),
        decor: monsterDecors.water
      }
      break
    case 83:
      config = {
        ...profileConfig("the-thing"),
        decor: monsterDecors.poison
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
    case 90:
      config = {
        ...profileConfig("duck"),
        decor: monsterDecors.neutral
      }
      break
    case 91:
      config = {
        ...profileConfig("duck"),
        decor: monsterDecors.fire
      }
      break
    case 92:
      config = {
        ...profileConfig("duck"),
        decor: monsterDecors.purple
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
      config = {
        ...profileConfig("cactus"),
        decor: monsterDecors.fire
      }
      break
    case 97:
      config = {
        ...profileConfig("cactus"),
        decor: monsterDecors.neutral
      }
      break
    case 98:
      config = {
        ...profileConfig("cactus"),
        decor: monsterDecors.undead
      }
      break
    case 105:
    case 106:
    case 107:
    case 108:
      config = {
        ...profileConfig("devil"),
        decor: monsterDecors.neutral
      }
      break
    default: config = {
      ...profileConfig("bad-chicken"),
      decor: monsterDecors.undead,
    }
  }

  if (isDead && config.decor) {
    config.decor = monsterDecors.dead
  }

  if (!config.decor) {
    return { ...config, decor: monsterDecors.neutral }
  } else {
    return config
  }
}