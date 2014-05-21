require 'java'

java_package 'k2b6s9j.rubycraft'

java_import 'cpw.mods.fml.common.Mod'
java_import 'cpw.mods.fml.common.event.FMLPreInitializationEvent'
java_import 'cpw.mods.fml.common.event.FMLInitializationEvent'
java_import 'cpw.mods.fml.common.event.FMLPostInitializationEvent'

java_annotation 'Mod(modid = "Rubycraft", name = "Rubycraft", version = "0.1")'
class Rubycraft

  @@item = Java::NetMinecraftItem::Item

  java_annotation 'Mod.EventHandler'
  java_signature 'void preInit(FMLPreInitializationEvent)'
  def preInit(event)

    itemRuby = @@item.new
    itemRuby.set_unlocalized_name('ruby')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(itemRuby, 'Ruby')

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
