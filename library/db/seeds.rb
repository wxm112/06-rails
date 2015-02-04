Author.destroy_all
Book.destroy_all

a1 = Author.create(:name => 'Henning Mankell', :nationality => 'Swedish', :dob => '03/02/1948', :image =>'https://ukiahcommunityblog.files.wordpress.com/2010/04/hm1.jpg')
b1 = Book.create(:title => 'Den femte kvinnan', :language => 'Swedish', :dop => 1996, :genre => 'Crime novel', :author_id => 1)

a1.books << b1