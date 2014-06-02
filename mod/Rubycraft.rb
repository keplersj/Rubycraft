require 'java'

java_package 'k2b6s9j.rubycraft'

java_import 'cpw.mods.fml.common.Mod'
java_import 'cpw.mods.fml.common.event.FMLPreInitializationEvent'
java_import 'cpw.mods.fml.common.event.FMLInitializationEvent'
java_import 'cpw.mods.fml.common.event.FMLPostInitializationEvent'

java_annotation 'Mod(modid = "Rubycraft", name = "Rubycraft", version = "0.1")'
module Rubycraft

  autoload :Items, 'rubycraft/items'
  autoload :Blocks, 'rubycraft/blocks'

  java_annotation 'Mod.EventHandler'
  java_signature 'void preInit(FMLPreInitializationEvent)'
  def preInit(event)

    Items::Ruby::Gem.set_unlocalized_name('Rubycraft:ruby')
    Items::Ruby::Gem.set_texture_name('Rubycraft:ruby')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(Items::Ruby::Gem, 'ruby')

    Items::Ruby::Sword.set_unlocalized_name('Rubycraft:ruby_sword')
    Items::Ruby::Sword.set_texture_name('Rubycraft:ruby_sword')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(Items::Ruby::Sword, 'ruby_sword')

    Items::Ruby::Pickaxe.set_unlocalized_name('Rubycraft:ruby_pickaxe')
    Items::Ruby::Pickaxe.set_texture_name('Rubycraft:ruby_pickaxe')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(Items::Ruby::Pickaxe, 'ruby_pickaxe')

    Items::Ruby::Spade.set_unlocalized_name('Rubycraft:ruby_spade')
    Items::Ruby::Spade.set_texture_name('Rubycraft:ruby_spade')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(Items::Ruby::Spade, 'ruby_spade')

    Items::Ruby::Axe.set_unlocalized_name('Rubycraft:ruby_axe')
    Items::Ruby::Axe.set_texture_name('Rubycraft:ruby_axe')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(Items::Ruby::Axe, 'ruby_axe')

    Items::Ruby::Hoe.set_unlocalized_name('Rubycraft:ruby_hoe')
    Items::Ruby::Hoe.set_texture_name('Rubycraft:ruby_hoe')
    Java::CpwModsFmlCommonRegistry::GameRegistry.register_item(Items::Ruby::Hoe, 'ruby_hoe')

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
