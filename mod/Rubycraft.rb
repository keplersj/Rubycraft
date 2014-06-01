require 'java'

java_package 'k2b6s9j.rubycraft'

java_import 'cpw.mods.fml.common.Mod'
java_import 'cpw.mods.fml.common.event.FMLPreInitializationEvent'
java_import 'cpw.mods.fml.common.event.FMLInitializationEvent'
java_import 'cpw.mods.fml.common.event.FMLPostInitializationEvent'

java_annotation 'Mod(modid = "Rubycraft", name = "Rubycraft", version = "0.1")'
module Rubycraft

  autoload :Item, 'rubycraft/items'
  autoload :Block, 'rubycraft/blocks'

  java_annotation 'Mod.EventHandler'
  java_signature 'void preInit(FMLPreInitializationEvent)'
  def preInit(event)

    Item::Ruby::Gem.set_unlocalized_name('Rubycraft:ruby')
    Item::Ruby::Gem.set_texture_name('Rubycraft:ruby')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(Item::Ruby::Gem, 'ruby')

    Item::Ruby::Sword.set_unlocalized_name('Rubycraft:ruby_sword')
    Item::Ruby::Sword.set_texture_name('Rubycraft:ruby_sword')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(Item::Ruby::Sword, 'ruby_sword')

    Item::Ruby::Pickaxe.set_unlocalized_name('Rubycraft:ruby_pickaxe')
    Item::Ruby::Pickaxe.set_texture_name('Rubycraft:ruby_pickaxe')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(Item::Ruby::Pickaxe, 'ruby_pickaxe')

    Item::Ruby::Spade.set_unlocalized_name('Rubycraft:ruby_spade')
    Item::Ruby::Spade.set_texture_name('Rubycraft:ruby_spade')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(Item::Ruby::Spade, 'ruby_spade')

    Item::Ruby::Axe.set_unlocalized_name('Rubycraft:ruby_axe')
    Item::Ruby::Axe.set_texture_name('Rubycraft:ruby_axe')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(Item::Ruby::Axe, 'ruby_axe')

    Item::Ruby::Hoe.set_unlocalized_name('Rubycraft:ruby_hoe')
    Item::Ruby::Hoe.set_texture_name('Rubycraft:ruby_hoe')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(Item::Ruby::Hoe, 'ruby_hoe')

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
