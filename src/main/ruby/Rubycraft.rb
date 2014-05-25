require 'java'

java_package 'k2b6s9j.rubycraft'

java_import 'cpw.mods.fml.common.Mod'
java_import 'cpw.mods.fml.common.event.FMLPreInitializationEvent'
java_import 'cpw.mods.fml.common.event.FMLInitializationEvent'
java_import 'cpw.mods.fml.common.event.FMLPostInitializationEvent'

java_annotation 'Mod(modid = "Rubycraft", name = "Rubycraft", version = "0.1")'
class Rubycraft

  @@itemRuby = Java::NetMinecraftItem::Item.new
  @@rubySword = Java::NetMinecraftItem::Item.new
  @@rubyPickaxe = Java::NetMinecraftItem::Item.new
  @@rubySpade = Java::NetMinecraftItem::Item.new
  @@rubyAxe = Java::NetMinecraftItem::Item.new
  #Dirty Hoe
  @@rubyHoe = Java::NetMinecraftItem::Item.new

  java_annotation 'Mod.EventHandler'
  java_signature 'void preInit(FMLPreInitializationEvent)'
  def preInit(event)

    @@itemRuby.set_unlocalized_name('Rubycraft:ruby')
    @@itemRuby.set_texture_name('Rubycraft:ruby')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(@@itemRuby, 'ruby')

    @@rubySword.set_unlocalized_name('Rubycraft:ruby_sword')
    @@rubySword.set_texture_name('Rubycraft:ruby_sword')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(@@rubySword, 'ruby_sword')

    @@rubyPickaxe.set_unlocalized_name('Rubycraft:ruby_pickaxe')
    @@rubyPickaxe.set_texture_name('Rubycraft:ruby_pickaxe')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(@@rubyPickaxe, 'ruby_pickaxe')

    @@rubySpade.set_unlocalized_name('Rubycraft:ruby_spade')
    @@rubySpade.set_texture_name('Rubycraft:ruby_spade')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(@@rubySpade, 'ruby_spade')

    @@rubyAxe.set_unlocalized_name('Rubycraft:ruby_axe')
    @@rubyAxe.set_texture_name('Rubycraft:ruby_axe')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(@@rubyAxe, 'ruby_axe')

    @@rubyHoe.set_unlocalized_name('Rubycraft:ruby_hoe')
    @@rubyHoe.set_texture_name('Rubycraft:ruby_hoe')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(@@rubyHoe, 'ruby_hoe')

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
