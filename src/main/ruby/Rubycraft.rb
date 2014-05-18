require 'java'

java_package 'k2b6s9j.rubycraft'

java_import 'cpw.mods.fml.common.Mod'
java_import 'cpw.mods.fml.common.event.FMLPreInitializationEvent'
java_import 'cpw.mods.fml.common.event.FMLInitializationEvent'
java_import 'cpw.mods.fml.common.event.FMLPostInitializationEvent'

java_import 'cpw.mods.fml.common.registry.GameRegistry'

java_annotation 'Mod(modid = "Rubycraft", name = "Rubycraft", version = "0.1")'
class Rubycraft

  java_annotation 'Mod.EventHandler'
  java_signature 'void preInit(FMLPreInitializationEvent)'
  def preInit(event)

    itemRuby = Java::K2b6s9jRubycraftItem::ItemRuby

    register_item = GameRegistry.java_method :registerItem, [java.lang.Class.for_name("net.minecraft.item.Item"), java.lang.String]

    #Initialize and Register Items with the Game.
    register_item[itemRuby.java_class, "Ruby"]

    printCopyrightInfo

  end

  def printCopyrightInfo
    puts 'Rubycraft'
    puts 'Copyright Kepler Sticka-Jones 2014'
    puts 'https://github.com/k2b6s9j/Rubycraft'
  end

  java_annotation 'Mod.EventHandler'
  java_signature 'void init(FMLInitializationEvent)'
  def init(event)
  end

  java_annotation 'Mod.EventHandler'
  java_signature 'void postInit(FMLPostInitializationEvent)'
  def postInit(event)
  end
end
