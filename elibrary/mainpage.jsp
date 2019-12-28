<html>


<body>

  it's not much but it's honest work
    <h1>  WELCOME TO E-LIBRARY </h1>

    <div class="tab">
      <button class="tablinks" onclick="openCity('All');">All</button>
      <button class="tablinks" onclick="openCity('Academic')">Academic</button>
      <button class="tablinks" onclick="openCity('Career')">Career</button>
      <button class="tablinks" onclick="openCity('Novel')">Novel</button>
    </div>

    <div id="All" class="tabcontent" >
      <form action="handle.jsp" method="post">
        <fieldset>
            <legend>All:</legend>
        <label class="container">             
            <input type="checkbox" class="book" name="Javascript" value="Javascript"> <img src="https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4302/9781430272199.jpg" width="5%" height="10%"> Javascript for Beginners<br>
            <input type="checkbox" class="book"name="Tourism" value="Tourism"> <img src="http://thetourismcoach.com/wp-content/uploads/2015/05/tc-cover-white-stroke.jpg" width="5%" height="10%"> The Tourism Coach<br>
            <input type="checkbox" class="book"name="OS" value="OS"> <img src="https://media.wiley.com/product_data/coverImage300/55/11180937/1118093755.jpg" width="5%" height="10%"> Operating System Concept<br>
            <input type="checkbox" class="book"name="Psychology" value="Psychology"> <img src="https://qph.fs.quoracdn.net/main-qimg-d4614f7b0b14d4cb11b000992bc42f16" width="5%" height="10%"> Dark Psychology<br>
            <input type="checkbox" class="book"name="Architecture" value="Architecture"> <img src="https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1435461740l/16546193._SX318_.jpg" width="5%" height="10%"> Career in Architecture<br>
            <input type="checkbox" class="book"name="CareerCode" value="CareerCode"> <img src="https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1458172792l/26240611.jpg" width="5%" height="10%"> The Career Code<br>
            <input type="checkbox" class="book"name="Attorney" value="Attorney"> <img src="https://imgv2-2-f.scribdassets.com/img/word_document/397539256/original/6ce53a25f9/1575063316?v=1" width="5%" height="10%"> The Early Career Guide for Attorneys<br>
            <input type="checkbox" class="book"name="Art" value="Art"> <img src="https://images-na.ssl-images-amazon.com/images/I/71oS798q-ZL.jpg" width="5%" height="10%"> The Ultimate Concept Art Career Guide<br>
            <input type="checkbox" class="book"name="HP" value="HP"> <img src="https://images-na.ssl-images-amazon.com/images/I/51gy%2Bg8Z%2B1L._SX343_BO1,204,203,200_.jpg" width="5%" height="10%">Harry Potter and the Goblet of Fire<br>
            <input type="checkbox" class="book"name="Khaldun" value="Khaldun"> <img src="https://images-na.ssl-images-amazon.com/images/I/91ubt3TJH1L.jpg" width="5%" height="10%"> Autobiography of Ibn Khaldun<br>
            <input type="checkbox" class="book"name="Umar" value="Umar"> <img src="https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1243164537l/6491759.jpg" width="5%" height="10%"> Umar Al-Khattab<br>
            <input type="checkbox" class="book"name="Muhammad" value="Muhammad"> <img src="https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1299049761l/8013459.jpg" width="5%" height="10%"> Muhammad the Messenger<br>
            <input type="submit" value="Borrow">
          </label>
        </fieldset>
          
    </div>

    <div id="Academic" class="tabcontent" style="display:none">
      <form action="handle.jsp" method="post">
        <fieldset>
            <legend>Academic:</legend>
        <label class="container">             
            <input type="checkbox" class="book"name="Javascript" value="Javascript"> <img src="https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4302/9781430272199.jpg" width="5%" height="10%"> Javascript for Beginners<br>
            <input type="checkbox" class="book"name="Tourism" value="Tourism"> <img src="http://thetourismcoach.com/wp-content/uploads/2015/05/tc-cover-white-stroke.jpg" width="5%" height="10%"> The Tourism Coach<br>
            <input type="checkbox" class="book"name="OS" value="OS"> <img src="https://media.wiley.com/product_data/coverImage300/55/11180937/1118093755.jpg" width="5%" height="10%"> Operating System Concept<br>
            <input type="checkbox" class="book"name="Psychology" value="Psychology"> <img src="https://qph.fs.quoracdn.net/main-qimg-d4614f7b0b14d4cb11b000992bc42f16" width="5%" height="10%"> Dark Psychology<br>
            <input type="submit" value="Borrow">
          </label>
        </fieldset>
          
    </div>

    <div id="Career" class="tabcontent" style="display:none">

        <fieldset>
            <legend>Career:</legend>
        <label class="container"> 
            <input type="checkbox" class="book"name="Architecture" value="Architecture"> <img src="https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1435461740l/16546193._SX318_.jpg" width="5%" height="10%"> Career in Architecture<br>
            <input type="checkbox" class="book"name="CareerCode" value="CareerCode"> <img src="https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1458172792l/26240611.jpg" width="5%" height="10%"> The Career Code<br>
            <input type="checkbox" class="book"name="Attorney" value="Attorney"> <img src="https://imgv2-2-f.scribdassets.com/img/word_document/397539256/original/6ce53a25f9/1575063316?v=1" width="5%" height="10%"> The Early Career Guide for Attorneys<br>
            <input type="checkbox" class="book"name="Art" value="Art"> <img src="https://images-na.ssl-images-amazon.com/images/I/71oS798q-ZL.jpg" width="5%" height="10%"> The Ultimate Concept Art Career Guide<br>
            <input type="submit" value="Borrow">
          </label>
        </fieldset>
        
    </div>

    <div id="Novel" class="tabcontent" style="display:none">
      
        <fieldset>
            <legend>Novels:</legend>
        <label class="container"> 
            <input type="checkbox" class="book"name="HP" value="HP"> <img src="https://images-na.ssl-images-amazon.com/images/I/51gy%2Bg8Z%2B1L._SX343_BO1,204,203,200_.jpg" width="5%" height="10%">Harry Potter and the Goblet of Fire<br>
            <input type="checkbox" class="book"name="Khaldun" value="Khaldun"> <img src="https://images-na.ssl-images-amazon.com/images/I/91ubt3TJH1L.jpg" width="5%" height="10%"> Autobiography of Ibn Khaldun<br>
            <input type="checkbox" class="book"name="Umar" value="Umar"> <img src="https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1243164537l/6491759.jpg" width="5%" height="10%"> Umar Al-Khattab<br>
            <input type="checkbox" class="book"name="Muhammad" value="Muhammad"> <img src="https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1299049761l/8013459.jpg" width="5%" height="10%"> Muhammad the Messenger<br>
            <input type="submit" value="Borrow">
          </label>
        </fieldset>
          </form>
          
    </div>
    
      
    <script>
      function openCity(cityName) {
       
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
          tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
          tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
      }

    
      </script>
</body>
</html>