namespace :puma do
    Rake::Task[:restart].clear_actions

    desc "Overwritten puma:restart task from lib/capistrano/tasks/overwrite_restart.rake"
    task :restart do
        puts "Overwriting puma:restart to ensure that puma is running. Effectively, we are just starting Puma."
        puts "A solution to this should be found."
        puts "Taken from https://stackoverflow.com/questions/44763777/capistrano-pumarestart-not-working-but-pumastart-does"
        invoke 'puma:stop'
        invoke 'puma:start'
    end
end