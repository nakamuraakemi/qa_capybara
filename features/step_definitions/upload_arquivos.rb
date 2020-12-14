Quando('eu faço um upload de arquivo') do
   visit('/outros/uploaddearquivos') 
   
   # path = 'c://Users/kanak/OneDrive/Accurate/Cursos/Udemy/Capybara_Cucumber_Ruby/RUBYTESTE/capybara/features/download.jpg'   
   # attach_file('upload', path, make_visible: true)                          

   @foto = File.join(Dir.pwd, 'features/download.jpg')
   attach_file('upload', @foto, make_visible: true)
   sleep(5)
end