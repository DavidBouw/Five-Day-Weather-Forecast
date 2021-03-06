<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:import url="/WEB-INF/jsp/common/header.jsp" />

<c:url var="formAction" value="/survey" />
<form method="POST" action="${formAction}">
<h5>National Parks Survey</h5>
<h1>Tell Us What You Think</h1>
<table class="survey" cellspacing="5">
<tr>
	<td><label for="name">Favorite National Park:</label> </td>
	<td>
	<select name="name">
		<c:forEach items="${requestScope.parksToSurvey}" var="park">
			<option value="${park.value.code}">${park.value.name}</option>
		</c:forEach>
	</select>
	</td>
</tr>
<tr>
	<td><label for="emailAddress">Your email:</label></td>
	<td>
		<input type="email" name="emailAddress" required="required"/>
	</td>
</tr>
<tr>
	<td><label for="stateOfResidence">State of residence:</label></td> 
	<td>
	<select name="stateOfResidence">
		<option value="AK">AK</option>
		<option value="AL">AL</option>
		<option value="AR">AR</option>
		<option value="AZ">AZ</option>
		<option value="CA">CA</option>
		<option value="CO">CO</option>
		<option value="CT">CT</option>
		<option value="DE">DE</option>
		<option value="FL">FL</option>
		<option value="GA">GA</option>
		<option value="HI">HI</option>
		<option value="IA">IA</option>
		<option value="ID">ID</option>
		<option value="IL">IL</option>
		<option value="IN">IN</option>
		<option value="KS">KS</option>
		<option value="KY">KY</option>
		<option value="LA">LA</option>
		<option value="MA">MA</option>
		<option value="MD">MD</option>
		<option value="ME">ME</option>
		<option value="MI">MI</option>
		<option value="MN">MN</option>
		<option value="MO">MO</option>
		<option value="MT">MT</option>
		<option value="NC">NC</option>
		<option value="ND">ND</option>
		<option value="NE">NE</option>
		<option value="NH">NH</option>
		<option value="NJ">NJ</option>
		<option value="NM">NM</option>
		<option value="NV">NV</option>
		<option value="NY">NY</option>
		<option value="OH">OH</option>
		<option value="OK">OK</option>
		<option value="OR">OR</option>
		<option value="PA">PA</option>
		<option value="RI">RI</option>
		<option value="SC">SC</option>
		<option value="SD">SD</option>
		<option value="TN">TN</option>
		<option value="TX">TX</option>
		<option value="UT">UT</option>
		<option value="VA">VA</option>
		<option value="VT">VT</option>
		<option value="WA">WA</option>
		<option value="WI">WI</option>
		<option value="WV">WV</option>
		<option value="WY">WY</option>
	</select>	</td>
</tr>
<tr>
	<td>	<label>Activity Level:</label></td>
	<td>
       <input type = "radio"
       		   id = "Easy"
              name = "activityLevel"
              value = "easy"
              checked = "checked" />
       <label for="Easy">Easy</label> 
       <input type = "radio"
       		   id = "Moderate"
              name = "activityLevel"
              value = "moderate" />
       <label for="Moderate">Moderate</label> 
       <input type = "radio"
       		   id = "Challenging"
              name = "activityLevel"
              value = "challenging" />
       <label for="Challenging">Challenging</label>
       <input type = "radio"
       		   id = "Extreme"
              name = "activityLevel"
              value = "extreme" />
       <label for="Extreme">Extreme</label> 
	</td>
</tr>
</table>
<br><input class="formSubmitButton" type="submit" value="Submit" />
</form>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />