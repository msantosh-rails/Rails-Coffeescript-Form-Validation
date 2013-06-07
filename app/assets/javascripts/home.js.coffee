# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

#username_validation

window.username_validation = ()->
  user = $("#uname").val()
  patt1 = /^[a-z A-Z 0-9]{5,8}$/
  ulen = user.match(patt1)
  if not ulen? or ulen is ""
    $("#emsg").text(" Required and must be of length 5 to 8")
  else
    $("#emsg").text("")
    true

#password_validation()    

window.password_validation = () ->
  pwd = $("#pwd").val()
  patt1 = /^[a-z A-Z 0-9]{1,6}$/
  plen = pwd.match(patt1)
  if not plen? or plen is ""
    $("#pwdemsg").text(" Required and must be of Maximum length 6")
    false
  else
    $("#pwdemsg").text("")
    true

#First Name Validation
window.fname_validation = () ->
  fnamelength = $("#fname").val().length
  if fnamelength < 2 or fnamelength > 6
    $("#fnameemsg").text(" Required and must be of length 2 to 6 ")
    false
  else
    $("#fnameemsg").text(" ")
    true    

#Last Name Validation

window.lname_validation = () ->
  lnamelength = $("#lname").val().length
  if lnamelength < 2 or lnamelength > 15
    $("#lnameemsg").text(" Required and must be of length 2 to 15")
    false
  else
    $("#lnameemsg").text("")
    true

#fileupload_validation

window.fileupload_validation = () ->
  fileName =$("#pic").val()
  ext = fileName.substring(fileName.lastIndexOf(".") + 1)
  if ext is "gif" or ext is "GIF" or ext is "JPG" or ext is "jpg" or ext is "png" or ext is "PNG"
    $("#picemsg").text("")
    true
  else
    $("#picemsg").text("Upload Only .gif/.jpg/.png Only")
    false    

#dob_validation

window.dob_validation = () ->
  dayindex = $("#daysel").prop("selectedIndex")
  monthindex = $("#monthsel").prop("selectedIndex");
  yearindex = $("#yearsel").prop("selectedIndex");
  if dayindex is 0 or monthindex is 0 or yearindex is 0
    $("#dobemsg").text("Required")
    false
  else
    $("#dobemsg").text( "")
    true
    
# Radio Button Validation

window.radio_validation = () ->
  gender = $("input[name=hob]").val()
  if $("input[name=hob]:checked").length is 0
    $("#hobemsg").text("Required")
    false
  else
    $("#hobemsg").text("")
    true
#Country Select Box Validation

window.countryselect_validation = () ->
  index = $("#countries").prop("selectedIndex")
  if index < 0
    $("#countryemsg").text("Required")
    false
  else
    $("#countryemsg").text("")
    true   
# phone number validation

window.phonenumber_validation = () ->
  phno = $("#phno1").val()
  patt1 = /^\+\s[9{1}][]?[1{1}]\s ?[\)]?\([]?([0-9]{3})\)?[\)]?\)[]?[\)]?\-[]?([0-9]{3})?[\)]?\-[]?([0-9]{4})$/
  if phno.match(patt1)
    $("#phnoemsg").text("")
    true
  else
    $("#phnoemsg").text( "Format Should Be + 91 (953)-305-8651)")
    false     

window.validateForm = () ->
	username_validation()
	password_validation() 
	fname_validation() 
	lname_validation()  
	fileupload_validation()
	dob_validation()
	radio_validation()
	countryselect_validation()
	phonenumber_validation()
	false   

