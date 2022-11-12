import 'package:f_app/application/constants.dart';
import 'package:f_app/application/strings.dart';
import 'package:flutter/material.dart';

import '../../../domain/model/account_model.dart';

class MoreInformationScreen extends StatelessWidget {
  final AccountResponse? accountResponse;
  const MoreInformationScreen({required this.accountResponse, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          stringMoreInfo,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _headingWidget(
              stringAgentInfo,
            ),
            _infoRowWidget(
              stringAgentId,
              accountResponse?.agent?.agentId ?? "-",
            ),
            _infoRowWidget(
              stringCommissionCode,
              accountResponse?.agent?.commissionCode ?? "-",
            ),
            _headingWidget(
              stringOtherInfo,
            ),
            _infoRowWidget(
              stringName,
              accountResponse?.name ?? "-",
            ),
            _infoRowWidget(
              stringStatus,
              accountResponse?.status ?? "-",
            ),
            _infoRowWidget(
              stringLanguage,
              accountResponse?.language ?? "-",
            ),
            _infoRowWidget(
              stringprovince,
              accountResponse?.provider ?? "-",
            ),
            _infoRowWidget(
              stringMemberSince,
              accountResponse?.memberSince ?? "-",
            ),
          ],
        ),
      ),
    );
  }

  Widget _headingWidget(String heading) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(
        heading,
        style: fontStyleBold(
          fontsize: 16,
        ).copyWith(
          decoration: TextDecoration.underline,
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
