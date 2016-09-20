* What is seeding a database? Why would we do this?

* When do you use AJAX in a Rails application? How do you decide whether to use AJAX or not?

* What does AJAX stand for?

  *  AJAX stands for Asynchronous JavaScript and XML. In a nutshell, it is the use of the XMLHttpRequest object to communicate with server-side scripts. It can send as well as receive information in a variety of formats, including JSON, XML, HTML, and even text files. AJAX’s most appealing characteristic, however, is its "asynchronous" nature, which means it can do all of this without having to refresh the page. This lets you update portions of a page based upon user events.

    The two major features of AJAX allow you to do the following:

    Make requests to the server without reloading the page
    Receive and work with data from the server

* How does an AJAX request interact with the server?

  * in a typical AJAX request, the HTML, CSS, and JavaScript is already loaded. Instead of making a URL request for another whole page, you use JavaScript to talk to the server and receive smaller pieces of information that can range from HTML to other data formats like JSON and XML. The JavaScript then acts on the response and updates the page accordingly, without having to refresh the entire page.

* What is unique about an AJAX request, compared to a normal HTTP request?

  * see above.

* How does an AJAX request know where to go?

  * It gets the location from the url or route path included in the remote.

* Describe some of your go-to methods and approaches to refactoring?

* What new concepts are you looking forward to learning?

* Describe a time when you struggled with a new concept this week; what was the issue? How did you resolve it?

* Why is integration testing important?

* How can we write integration tests for AJAX?

  * Using PhantomJS and Poltergeist


* Analyze the controller entry below. What is it doing? What can you learn about the application as a whole based on this singular block of code?

  * Using ajax to create a kitten object, presumably (without seeing the js file)
  
```
def create
    @litter = List.find(params[:litter_id])
    @kitten = @litter.kittens.new(kitten_params)
    if @kitten.save
      flash[:notice] = "Kitten successfully added!"
      respond_to do |format|
        format.html { redirect_to litter_path(@kitten.list) }
        format.js
      end
    else
      render :new
    end
  end
```


* Describe a time you went above and beyond the basic requirements of the course/curriculum. Have you researched additional gems? New concepts? Awesome tools?

* Talk about a project you created recently that you're proud of. What skills does it demonstrate? What challenges did you face during the course of development?

* Describe your ongoing independent project as if you were pitching it to an employer (like you will during Demo Day!) What technologies does it feature? What are you particularly proud of? What features are you integrating next?

* Describe the demographic your ongoing project is aimed at. What will it help them do? Why are they the main audience for your project?
