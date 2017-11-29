var points = []; // Stores click-points in password creation

var authenticatePoints = []; // Stores click-points in password 
                                      // authentication.
var recallAttempts = 0;

var recallAttemptsArray = [];

var recall1Attempts = 0;

var recall1AttemptsArray = [];

var recall2Attempts = 0;

var recall2AttemptsArray = [];

var imageToNum = {"images/people_620.jpg": 0,
                  "images/landscape_620.jpg": 1,
                  "images/animal_620.jpg": 2};

$(function() {
  
  $("#make-new-password").hide();
  
  // Places the image source in hidden input to be passed in form.
  $("#image-form").submit(function(e) {
    var image = $("#chosen-picture").attr('src');
    $("#image").val(imageToNum[image]);
  });
  
  // Places a red cross on the image where clicked.
  var clickFunction = function(element, array, image) {
    $(element).click(function(e) {

      if (array.length < 5) {
        var offset = $(this).offset();
        var relativeX = (e.pageX - offset.left);
        var relativeY = (e.pageY - offset.top);

        array.push(new Array(relativeX, relativeY));

        var imgSize = 20;

        var img = $('<img>');
        img.css('top', relativeY - imgSize / 2);
        img.css('left', relativeX - imgSize / 2);
        img.attr('src', image);
        img.appendTo(element);
      }
    });
  };
  
  clickFunction("#picture", points, '../images/cross_boxed.gif');
  
  clickFunction("#picture-authenticate", authenticatePoints, '../images/cross2.gif');
  
  // Clears the crosses from the image and empties the arrays holding 
  // the points.
  var clearFunction = function(element, pictureElement, array) {
    $(element).submit(function(e) {
      e.preventDefault();
      array.length = 0; // Empties array
      $(pictureElement).empty();
    });
  };
  
  clearFunction("#clear-form", "#picture", points);
  
  clearFunction("#clear-form-authenticate", "#picture-authenticate",
                authenticatePoints);
  
  // Places points array in hidden input to be passed in form.
  $("#creation-form").submit(function(e) {
    if (points.length < 5) {
      alert("Need more points");
      e.preventDefault();
    }
    var pointsStr = JSON.stringify(points);
    $("#points").val(pointsStr);
  });
  
  // Checks if the log in attempt matches the stored password. Uses a tolerance
  // of 9 pixels.
  $("#check-form").submit(function(e) {
    if (authenticatePoints.length < 5) {
      alert("Need more points");
      e.preventDefault();
      return;
    }
    recallAttemptsArray.push(authenticatePoints.slice(0)); // use slice to clone array
    for (var i = 0; i < points.length; i++) {
      if (authenticatePoints[i][0] < points[i][0] - 9 ||
          authenticatePoints[i][0] > points[i][0] + 9 ||
          authenticatePoints[i][1] < points[i][1] - 9 ||
          authenticatePoints[i][1] > points[i][1] + 9) {
        alert("Incorrect password!");
        recallAttempts += 1;
        if (recallAttempts > 3) {
          $("#make-new-password").show();
        }
        e.preventDefault();
        return;
      }
    }
    recallAttempts += 1;
    $("#attempts").val(recallAttempts);
    $("#attempts-array").val(JSON.stringify(recallAttemptsArray));
  });
  
  
  var recallCheckFunction = function(element, counter, array) {
    $(element).submit(function(e) {
      if (authenticatePoints.length < 5) {
        alert("Need more points");
        e.preventDefault();
        return;
      }
      array.push(authenticatePoints.slice(0)); // use slice to clone array
      for (var i = 0; i < points.length; i++) {
        if (authenticatePoints[i][0] < points[i][0] - 9 ||
            authenticatePoints[i][0] > points[i][0] + 9 ||
            authenticatePoints[i][1] < points[i][1] - 9 ||
            authenticatePoints[i][1] > points[i][1] + 9) {
          alert("Incorrect password!");
          counter += 1;
          if (counter > 3) {
            break;
          }
          e.preventDefault();
          return;
        }
      }
      counter += 1;
      $("#attempts").val(counter);
      $("#attempts-array").val(JSON.stringify(array));
    });
  };
  
  recallCheckFunction("#check-form-recall-1", recall1Attempts, recall1AttemptsArray);
  
  recallCheckFunction("#check-form-recall-2", recall2Attempts, recall2AttemptsArray);
  
  // Used to display larger version of chosen image in choose_image.php
  var imageChoiceFunction = function(element) {
    $(element).click(function(e) {
      var source = $(this).attr('src');
      var newSource = source.substring(0, source.indexOf("_"));
      $("#picture-placement").empty().append("<img id='chosen-picture' src='" + 
                                             newSource + "_620.jpg'/>");
    });
  };
  
  imageChoiceFunction("#img1");
  imageChoiceFunction("#img2");
  imageChoiceFunction("#img3");
    
});