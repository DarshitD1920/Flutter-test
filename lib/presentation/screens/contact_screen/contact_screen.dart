import 'package:f_app/application/constants.dart';
import 'package:f_app/application/strings.dart';
import 'package:f_app/presentation/screens/contact_screen/more_info_screen.dart';
import 'package:flutter/material.dart';

import '../../../domain/model/account_model.dart';

class ContactScreen extends StatelessWidget {
  final AccountResponse? accountResponse;
  const ContactScreen({required this.accountResponse, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          stringContactInfo,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            _infoRowWidget(
                stringFirstName, accountResponse?.contact?.fname ?? "-"),
            _infoRowWidget(
                stringLastName, accountResponse?.contact?.lname ?? "-"),
            _infoRowWidget(
                stringLastName, accountResponse?.contact?.emailAddress ?? "-"),
            _infoRowWidget(
              stringMobile,
              (accountResponse?.contact?.phone?.mobile ?? "-").toString(),
            ),
            _infoRowWidget(
              stringprovince,
              (accountResponse?.contact?.province ?? "-").toString(),
            ),
            _infoRowWidget(
                stringAdderssOne, accountResponse?.contact?.address1 ?? "-"),
            _infoRowWidget(
                stringAdderssTwo, accountResponse?.contact?.address2 ?? "-"),
            _infoRowWidget(stringCity, accountResponse?.contact?.city ?? "-"),
            _infoRowWidget(
                stringCountry, accountResponse?.contact?.country ?? "-"),
            const Spacer(),
            MaterialButton(
              minWidth: double.infinity,
              height: 50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MoreInformationScreen(
                        accountResponse: accountResponse,
                      );
                    },
                  ),
                );
              },
              color: primaryColor,
              child: Text(
                stringMoreInfo,
                style: fontStyleSemiBold(color: whiteColor, fontsize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoRowWidget(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          _infoKey(title),
          const SizedBox(
            width: 10,
          ),
          const Text(":"),
          const Spacer(),
          _infoValue(value),
        ],
      ),
    );
  }

  Widget _infoValue(String value) {
    return Text(
      value,
      style: fontStyleSemiBold(color: blackColor),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _infoKey(String title) {
    return Text(
      title,
      style: fontStyleMedium(color: lightBlackColor),
    );
  }
}
