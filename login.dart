class _LoginPageState extends State<LoginPage> {
    
    final TextEditingController _emailFilter = new TextEditingController();
    final TextEditingController _passwordFilter = new TextEditingController();
    String _email = "";
    String _password = "";
    _LoginPageState() {
        _emailFilter.addListener(_emailListen);
        _passwordFilter.addListener(_passwordListen);
    void _emailListen() {
        if (_emailFilter.text.isEmpty) {
            _email = "";
        } else {
            _email = _emailFilter.text;
        }
    }
    void _passwordListen() {
        if (_passwordFilter.text.isEmpty) {
            _password = "";
        } else {
            _password = _emailFilter.text;
        }
        
    
    }
    
    enum FormType {
    login,
    register
}

void _loginPressed () {
    print('The use wants to login with $_email and $_password');
}
void _createAccountPressed () {
    print('The user wants to register with $_email and $_password');
}
void _passwordReset () {
    print('The user wants a password reset request sent to $_email);
}

bool isEmailAddressValid(String email) {
    RegExp exp = new RegExp (
        r"^[\w-.]+@([\w-]+.)+[\w-]{2,4}$",
        caseSensitive: false,
        multiLine: false,
    );
    return exp.hasMatch(email.trim());
    // we trim to remove trailing white spaces
}

void _formChange () {
    setState(() {
        if (_form == FormType.register) {
            _form = FormType.login;
        } else {
            _form = FormType.register;
        }
    });
}


