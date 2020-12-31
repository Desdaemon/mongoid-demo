namespace :srb do
  task :dsl do
    system('bundle exec srb t --print plugin-generated-code --dsl-plugins triggers.yml --dir . > sorbet/rbi/dsl.rbi')
  end
end
