import 'package:crypto_gyaan/modules/common/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/constants.dart';

class BlogsPage extends StatelessWidget {
  BlogsPage({
    Key? key,
  }) : super(key: key);
  var blogs = [
    'The Russo-Ukrainian War is an ongoing war primarily involving Russia, Belarus, and pro-Russian forces on one side, and Ukraine on the other. Armed conflict began in February 2014 in the wake of Euromaidan, centred on the status of Crimea and parts of the Donbas, which are internationally recognised as part of Ukraine',
    'Chia is a cryptocurrency where mining is based on the amount of hard disk storage space devoted to it rather than processing power, as with Proof of Work cryptocurrencies such as Bitcoin. The platform was created by a company called Chia Network. The Chia Network was founded in 2017 by American computer programmer Bram Cohen, the author of the BitTorrent protocol.[1]In May 2021, Chia Network raised a 61 million investment, valuing the company at about 500 million. The same month, the company announced plans to conduct an IPO before the end of 2021,[2][3][4] however as of January 2022, the IPO has not yet occurred',
    'Ethereum is a decentralized, open-source blockchain with smart contract functionality. Ether is the native cryptocurrency of the platform. Among cryptocurrencies, Ether is second only to Bitcoin in market capitalization. Ethereum was conceived in 2013 by programmer Vitalik Buterin',
    'Bitcoin is a decentralized digital currency, without a central bank or single administrator, that can be sent from user to user on the peer-to-peer bitcoin network without the need for intermediaries',
    'Block, Inc., formerly Square, Inc., is an American financial services and digital payments company based in San Francisco, California. The company was founded in 2009 by Jack Dorsey and Jim McKelvey and launched its first platform in 2010. It has been traded as a public company on the New York Stock Exchange since November 2015 with the ticker symbol SQ.',
    'Solana is a public blockchain platform with smart contract functionality. Its native cryptocurrency is SOL. Solana works to one up Ethereum by providing faster transaction times and cheaper fees'
  ];
  var blogTitles = [
    'Crypto in Russia Ukariane Crisis',
    'BitCoin term origin and Chia',
    'Is Ether better than BitCoin?',
    'BitCoin - digital gold',
    'Twitter CEO Jack Dorcey and Block.xyz',
    'Most robust blockchain in world!',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: const Text(
            'Blogs',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: blogs.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                    bottom: 16.0,
                  ),
                  child: Card(
                    color: cardColorsLight[i % 6],
                    elevation: 2,
                    child: SizedBox(
                      height: 240,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    blogTitles[i],
                                    style: GoogleFonts.merriweather(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '28/02/2022',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: cardColorsDark[i % 6],
                                  width: 1.2,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  blogs[i],
                                  style: GoogleFonts.merriweather(
                                    fontSize: 14,
                                    // fontWeight: FontWeight.w500,
                                  ),
                                  // overflow: TextOverflow.,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            CreatorTag(),
          ],
        ),
      ),
    );
  }
}
