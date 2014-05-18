require 'java'

java_package 'k2b6s9j.Rubycraft'

java_import 'cpw.mods.fml.common.Mod'
java_import 'cpw.mods.fml.common.Mod.EventHandler'
java_import 'cpw.mods.fml.common.event.FMLPreInitializationEvent'
java_import 'cpw.mods.fml.common.event.FMLInitializationEvent'
java_import 'cpw.mods.fml.common.event.FMLPostInitializationEvent'

java_import 'k2b6s9j.Rubycraft.item.ItemRuby'

java_annotation 'Mod(modid = "Rubycraft", name = "Rubycraft", version = "0.1")'
class Rubycraft
  java_annotation 'EventHandler'
  java_signature 'void preInit(FMLPreInitializationEvent)'
  def preInit(event)
  end

  java_annotation 'EventHandler'
  java_signature 'void init(FMLInitializationEvent)'
  def init(event)
  end

  java_annotation 'EventHandler'
  java_signature 'void postInit(FMLPostInitializationEvent)'
  def postInit(event)
  end
end
