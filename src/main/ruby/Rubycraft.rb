require 'java'

java_package 'k2b6s9j.rubycraft'

java_import 'cpw.mods.fml.common.Mod'
java_import 'cpw.mods.fml.common.event.FMLPreInitializationEvent'
java_import 'cpw.mods.fml.common.event.FMLInitializationEvent'
java_import 'cpw.mods.fml.common.event.FMLPostInitializationEvent'

java_annotation 'Mod(modid = "Rubycraft", name = "Rubycraft", version = "0.1")'
class Rubycraft

  java_annotation 'Mod.EventHandler'
  java_signature 'void preInit(FMLPreInitializationEvent)'
  def preInit(event)

    itemRuby = Java::NetMinecraftItem::Item.new
    itemRuby.set_unlocalized_name('Rubycraft:ruby')
    itemRuby.set_texture_name('Rubycraft:ruby')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(itemRuby, 'ruby')
    
    rubySword = Java::NetMinecraftItem::ItemSword.new
    rubySword.set_unlocalized_name('Rubycraft:ruby_sword')
    rubySword.set_texture_name('Rubycraft:ruby_sword')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(rubySword, 'ruby_sword')
    
    rubyPickaxe = Java::NetMinecraftItem::ItemPickaxe.new
    rubyPickaxe.set_unlocalized_name('Rubycraft:ruby_pickaxe')
    rubyPickaxe.set_texture_name('Rubycraft:ruby_pickaxe')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(rubyPickaxe, 'ruby_pickaxe')
    
    rubySpade = Java::NetMinecraftItem::ItemSpade.new
    rubySpade.set_unlocalized_name('Rubycraft:ruby_spade')
    rubySpade.set_texture_name('Rubycraft:ruby_spade')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(rubySpade, 'ruby_spade')
    
    rubyAxe = Java::NetMinecraftItem::ItemAxe.new
    rubyAxe.set_unlocalized_name('Rubycraft:ruby_axe')
    rubyAxe.set_texture_name('Rubycraft:ruby_axe')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(rubyAxe, 'ruby_spade')

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
