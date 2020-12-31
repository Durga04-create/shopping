function uservalid()
{
    var id, name, pass, conpass, email, mobile;
    id = document.getElementById("TextBox5").value;
    name = document.getElementById("TextBox1").value;
    pass = document.getElementById("TextBox2").value;
    conpass = document.getElementById("TextBox3").value;
    email = document.getElementById("TextBox4").value;
    emailexp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;
    mobile = document.getElementById("TextBox7").value;
    mobexp = /^\d{10}$/;

    if (id == ' ' && name == ' ' && pass == ' ' && conpass == ' ' && email == ' ' && mobile == ' ') {
        alert("Enter all fields");
        return false;
    }
    if (id == '') {
        alert("Please Enter ID");
        return false;
    }
    if (name == '') {
        alert("Please Enter Your name");
        return false;
    }
    if (pass == '') {
        alert("Please Enter your password");
        return false;
    }
    if (conpass == '') {
        alert("Please Enter your confrom password");
        return false;
    }
    if (pass != conpass) {
        alert("Please Enter same password");
        return false;
    }
    if (email == '') {
        alert("Please Enter your emailid");
        return false;
    }
    if (email != ' ') {
        if (!email.match(emailexp)) {
            alert("invalid email id");
            return false;
        }
    }
    if (mobile == '') {
        alert("Please Enter your mobile number");
        return false;
    }
    if (mobile != ' ') {
        if (!mobile.match(mobexp)) {
            alert("invalid mobile number");
            return false;
        }
    }
    return true;
}

function shipvalid()
{
    var name,addr, city, state,pin,mobile;
    name = document.getElementById("TextBox1").value;
    addr = document.getElementById("TextBox3").value;
    city = document.getElementById("TextBox4").value;
    state = document.getElementById("TextBox5").value;
    pin = document.getElementById("TextBox6").value;
    pinexp = /^\d{6}$/;
    mobile = document.getElementById("TextBox12").value;
    mobexp = /^\d{10}$/;
    
    if (name == ' ' && addr == ' ' && city == ' ' && state == ' ' && pin == ' ' && mobile == ' ') {
        alert("Enter all fields");
        return false;
    }
    if (name == '') {
        alert("Please Enter Your name");
        return false;
    }
    if (addr == '') {
        alert("Please Enter your address");
        return false;
    }
    if (city == '') {
        alert("Please Enter your city");
        return false;
    }
    if (state == '') {
        alert("Please Enter your state");
        return false;
    }
    if (pin == '') {
        alert("Please Enter your Pincode");
        return false;
    }
    if (pin != ' ') {
        if (!pin.match(pinexp)) {
            alert("invalid Pincode number");
            return false;
        }
    }
    if (mobile == '') {
        alert("Please Enter your Mobile number");
        return false;
    }
    if (mobile != ' ') {
        if (!mobile.match(mobexp)) {
            alert("invalid Mobile number");
            return false;
        }
    }
    return true;
}

function payvalid() {
    var cname, cno, month, year, cvv;
    cname = document.getElementById("TextBox7").value;
    cno = document.getElementById("TextBox8").value;
    cnoexp=/^\d{16}$/;
    month = document.getElementById("TextBox9").value;
    monthexp=/^\d{2}$/;
    year = document.getElementById("TextBox10").value;
    yearexp=/^\d{4}$/;
    cvv = document.getElementById("TextBox11").value;
    cvvexp = /^\d{3}$/;

    if (cname == ' ' && cno == ' ' && month == ' ' && year == ' ' && cvv == ' ') {
        alert("Enter all fields");
        return false;
    }
    if (cname == '') {
        alert("Please Enter the Card name");
        return false;
    }
    if (cno == '') {
        alert("Please Enter the Card number");
        return false;
    }
    if (cno != ' ') {
        if (!cno.match(cnoexp)) {
            alert("invalid Card number");
            return false;
        }
    }
    if (month == '') {
        alert("Please Enter the month in digits(eg:04)");
        return false;
    }
    if (month != ' ') {
        if (!month.match(monthexp)) {
            alert("invalid Month");
            return false;
        }
    }
    if (year == '') {
        alert("Please Enter the year in digits(eg:2020)");
        return false;
    }
    if (year != ' ') {
        if (!year.match(yearexp)) {
            alert("invalid year");
            return false;
        }
    }
    if (cvv == '') {
        alert("Please Enter your cvv");
        return false;
    }
    if (cvv != ' ') {
        if (!cvv.match(cvvexp)) {
            alert("invalid cvv number");
            return false;
        }
    }
    return true;
}


