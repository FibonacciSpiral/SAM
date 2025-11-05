
// The ErrorHandler class is used to log one or more error
// messages encountered when validating form fields. After
// all errors have been logged the errors can then be displayed
// in an alert box, the failed form field controls highlighted, and
// focus/selection set on the first failingform field control.
//
// NOTE: the ErrorHandler object should be instantiated at
// global scope. It must be kept around for subsequent
// calls. Use the clearErrors message between those calls to
// reset the highlighted fields on the screen.
//
// EXAMPLE:
// var err = new ErrorHandler();
// function doValidate() {
//     err.clearErrors();
//     if (!isValidIP(document.network_form.ip_addr.value))
//         err.addError(document.network_form.ip_addr, "Invalid IP address.");
//     if (!isDottedForm(document.network_form.submask.value))
//         err.addError(document.network_form.submask, "Invalid subnet mask.");
//     ...
//     err.showError();
//     return !err.hasError();
// }

// Constructor
function ErrorHandler() {
    this.messages = new Array();
    this.failedFormCtrls = new Array();
}

// Add an error message and the form control that caused the error.
ErrorHandler.prototype.addError = function(formCtrl, errMsg) {
    if (errMsg != null) {
        this.messages[this.messages.length] = errMsg;
    }

    if (formCtrl != null) {
        this.failedFormCtrls[this.failedFormCtrls.length] = formCtrl;
    }
}

// Determine if errors have been logged (returns boolean).
ErrorHandler.prototype.hasError = function() {
    return (this.messages.length > 0);
}

// Show error messages and process form controls (highlight and set focus).
ErrorHandler.prototype.showError = function() {
    if (this.messages.length == 0) {
        //no error
        document.getElementById("error").innerHTML = "";
        document.getElementById("error").style.display = "none";
        return;
    } else if (this.messages.length == 1) {
        msg = 'Please correct the following problem and try again:\n\n' + this.messages[0]
    } else {
        var msg = 'Please correct the following problems and try again:\n';
        var i;
        for (i=0; i<this.messages.length; ++i) {
            msg = msg + "\n- " + this.messages[i];
        }
    }
    alert(msg);
    document.getElementById("error").innerHTML = msg;
    document.getElementById("error").style.display = "block";

    var f;
    var focusSet = false;
    for (f=0; f<this.failedFormCtrls.length; ++f) {
        // Older browsers don't support the className attribute.
        if (this.failedFormCtrls[f].className != null)
            this.failedFormCtrls[f].className = 'errorfield';

        // Set focus and select text on first failed field.
        if (!focusSet) {
            this.failedFormCtrls[f].focus();
            this.failedFormCtrls[f].select();
            focusSet = true;
        }
    }
}

// Clear all error messages and reset the styles on the form controls that were
// previously flagged for errors.
ErrorHandler.prototype.clearErrors = function() {
    // Reset messages
    this.messages.length = 0;

    // Reset styles for failed controls
    for (f=0; f<this.failedFormCtrls.length; ++f) {
        // Older browsers don't support the className attribute.
        if (this.failedFormCtrls[f].className != null)
            this.failedFormCtrls[f].className = '';
    }
    this.failedFormCtrls.length = 0;
}
