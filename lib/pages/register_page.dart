import 'package:flutter/material.dart';

import 'package:chat_app/widgets/custom_input.dart';
import 'package:chat_app/widgets/logo_widget.dart';
import 'package:chat_app/widgets/labes_widget.dart';
import 'package:chat_app/widgets/boton_azul_widget.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /* -------------------------- */
                LogoWidget(
                  title: 'Registro',
                ),
                /* -------------------------- */
                _Form(),
                /* -------------------------- */
                LabelsWidget(
                  title: '¿Ya tienes cuenta?',
                  subTitle: 'Iniciar sesión!',
                  route: 'login',
                ),
                /* -------------------------- */
                Text(
                  'Terminos y condiciones de uso',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
                /* -------------------------- */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/* <===================================> */

/* <===================================> */
/* Formulario del Login */
/* <===================================> */
class _Form extends StatefulWidget {
  _Form({Key key}) : super(key: key);

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          /* ------------------ */
          CustomInput(
            icon: Icons.perm_identity,
            placeholder: 'Nombre',
            textInputType: TextInputType.text,
            isPassword: false,
            textController: nameCtrl,
          ),
          /* ------------------ */
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            textInputType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          /* ------------------ */

          CustomInput(
            icon: Icons.lock_outlined,
            placeholder: 'Contraseña',
            isPassword: true,
            textController: passwordCtrl,
          ),
          /* ------------------ */

          BlueButton(
            title: 'Ingrese',
            onPress: () {
              print(this.emailCtrl.text);
              print(this.passwordCtrl.text);
            },
          )
          /* ------------------ */
        ],
      ),
    );
  }
}
/* <===================================> */
