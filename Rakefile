require 'rake'

desc 'install all dotfiles'
task :install do
  linkables = Dir.glob('*/**{.symlink}')
  linkables.each do |linkable|
    link = linkable.slice(/.*\/(.*)\.symlink/, 1)
    `ln -s $PWD/#{linkable} $HOME/.#{link}`
  end

end
