task :default => [:run]

desc "init board, load the zombies, load the poor creatures, and let it all play out"

task "run" do
  $LOAD_PATH.unshift(File.dirname(__FILE__), "lib")
  require 'zombie_app'

  f = []
  File.foreach("input.txt") do |line|
    f << line.tr('()','').strip
  end
  
  board_size, zombie_start, poor_creatures, moves = f

  zombie_app = ZombieApp.call(board_size, zombie_start, poor_creatures, moves)

  # Print Results
  puts "Game Over"
  puts "Zombie Score: #{zombie_app.map(&:points).sum}"
  print "Zombie Positions: "
  zombie_app.each{|item| print item.location }
  puts " "
end

task :test do
  ruby "spec/*.rb"
end