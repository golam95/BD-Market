/**
 * 
 */
$(document)
		.ready(
				function() {
					// insert the user information
					$('#contactms')
							.click(
									function() {

										var contact_name = $('#c_name').val();
										var contact_email = $('#c_email').val();
										var contact_subject = $("#c_subject")
												.val();
										var contact_message = $("#c_message")
												.val();
										var pattern = new RegExp(
												/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);

										if ($.trim(contact_name) == '') {

											alert("Sorry,Name field must not be empty!!");

										} else if (!pattern.test($
												.trim(contact_email))) {

											alert("Sorry,Enter valid email address!!");

										} else if ($.trim(contact_email) == '') {

											alert("Sorry,Email field must not be empty!!");

										} else if ($.trim(contact_subject) == '') {

											alert("Sorry,Subject field must not be empty!!");

										} else if ($.trim(contact_message) == '') {

											alert("Sorry,Message field must not be empty!!");

										} else {

											$
													.ajax({
														method : 'POST',
														data : {
															c_name : contact_name,
															c_email : contact_email,
															c_subject : contact_subject,
															c_message : contact_message,
															action : 'contactms'
														},
														url : 'Manage_reg',
														dataType : "text",
														success : function(
																result) {
															$('#c_name')
																	.val("");
															$('#c_email').val(
																	"");
															$('#c_subject')
																	.val("");
															$('#c_message')
																	.val("");
															alert("Thanks,We will confirm you as soon as possible!!");
														}
													});

											return false;
										}

									});

				});

// Login customer or shopkeeper

// forgot password

$(document)
		.ready(
				function() {
					// insert the user information
					$('#forgot')
							.click(
									function() {

										var send_email = $('#sendemail').val();
										var username = $('#username').val();
										
										var pattern = new RegExp(
												/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);

										if ($.trim(send_email) == '') {

											alert("Sorry,Email field must not be empty!!");
											

										} else if (!pattern.test($
												.trim(send_email))) {

											alert("Sorry,Enter valid email address!!");
											
										} else {
											$.ajax({
												method : 'POST',
												data : {
													email : send_email,
													username : username,
													action : 'forgotpassword'
												},
												url : 'Manage_reg',
												dataType : "text",
												success : function(result) {
													alert("Sorry,Enter valid email address!!");
													$('#sendemail').val("");
												}
											});
											return false;
										}

									});

				});
