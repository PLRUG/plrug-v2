# Currencies
#
Billing::Currency.destroy_all
Billing::Currency.create(
  [
    {
      name: 'United Arab Emirates Dirham',
      abbrv: 'AED'
    },
    {
      name: 'Afghan Afghani',
      abbrv: 'AFN'
    },
    {
      name: 'Albanian Lek',
      abbrv: 'ALL'
    },
    {
      name: 'Armenian Dram',
      abbrv: 'AMD'
    },
    {
      name: 'Netherlands Antillean Guilder',
      abbrv: 'ANG'
    },
    {
      name: 'Angolan Kwanza',
      abbrv: 'AOA'
    },
    {
      name: 'Argentine Peso',
      abbrv: 'ARS'
    },
    {
      name: 'Australian Dollar',
      abbrv: 'AUD'
    },
    {
      name: 'Aruban Florin',
      abbrv: 'AWG'
    },
    {
      name: 'Azerbaijani Manat',
      abbrv: 'AZN'
    },
    {
      name: 'Bosnia and Herzegovina Convertible Mark',
      abbrv: 'BAM'
    },
    {
      name: 'Barbadian Dollar',
      abbrv: 'BBD'
    },
    {
      name: 'Bitcoin Cash',
      abbrv: 'BCH'
    },
    {
      name: 'Bangladeshi Taka',
      abbrv: 'BDT'
    },
    {
      name: 'Bulgarian Lev',
      abbrv: 'BGN'
    },
    {
      name: 'Bahraini Dinar',
      abbrv: 'BHD'
    },
    {
      name: 'Burundian Franc',
      abbrv: 'BIF'
    },
    {
      name: 'Bermudian Dollar',
      abbrv: 'BMD'
    },
    {
      name: 'Brunei Dollar',
      abbrv: 'BND'
    },
    {
      name: 'Bolivian Boliviano',
      abbrv: 'BOB'
    },
    {
      name: 'Brazilian Real',
      abbrv: 'BRL'
    },
    {
      name: 'Bahamian Dollar',
      abbrv: 'BSD'
    },
    {
      name: 'Bitcoin',
      abbrv: 'BTC'
    },
    {
      name: 'Bhutanese Ngultrum',
      abbrv: 'BTN'
    },
    {
      name: 'Botswana Pula',
      abbrv: 'BWP'
    },
    {
      name: 'Belarusian Ruble',
      abbrv: 'BYN'
    },
    {
      name: 'Belarusian Ruble (Obsolete)',
      abbrv: 'BYR'
    },
    {
      name: 'Belize Dollar',
      abbrv: 'BZD'
    },
    {
      name:'Canadian Dollar',
      abbrv: 'CAD'
    },
    {
      name: 'Congolese Franc',
      abbrv: 'CDF'
    },
    {
      name: 'Swiss Franc',
      abbrv: 'CHF'
    },
    {
      name: 'Chilean Unit of Account (UF)',
      abbrv: 'CLF'
    },
    {
      name: 'Chilean Peso',
      abbrv: 'CLP'
    },
    {
      name: 'Chinese Offshore Yuan',
      abbrv: 'CNH'
    },
    {
      name: 'Chinese Yuan Renminbi',
      abbrv: 'CNY'
    },
    {
      name: 'Colombian Peso',
      abbrv: 'COP'
    },
    {
      name: ' Costa Rican Colón',
      abbrv: 'CRC'
    },
    {
      name: 'Cuban Convertible Peso',
      abbrv: 'CUC'
    },
    {
      name: 'Cuban Peso',
      abbrv: 'CUP'
    },
    {
      name: 'Cape Verdean Escudo',
      abbrv: 'CVE'
    },
    {
      name: 'Czech Koruna',
      abbrv: 'CZK'
    },
    {
      name: 'Djiboutian Franc',
      abbrv: 'DJF'
    },
    {
      name: 'Danish Krone',
      abbrv: 'DKK'
    },
    {
      name: 'Dominican Peso',
      abbrv: 'DOP'
    },
    {
      name: 'Algerian Dinar',
      abbrv: 'DZD'
    },
    {
      name: 'Estonian Kroon (Obsolete)',
      abbrv: 'EEK'
    },
    {
      name: 'Egyptian Pound',
      abbrv: 'EGP'
    },
    {
      name: 'Eritrean Nakfa',
      abbrv: 'ERN'
    },
    {
      name: 'Ethiopian Birr',
      abbrv: 'ETB'
    },
    {
      name: 'Euro',
      abbrv: 'EUR'
    },
    {
      name: 'Fijian Dollar',
      abbrv: 'FJD'
    },
    {
      name: 'Falkland Islands Pound',
      abbrv: 'FKP'
    },
    {
      name: 'British Pound Sterling',
      abbrv: 'GBP'
    },
    {
      name: 'British Penny (Obsolete)',
      abbrv: 'GBX'
    },
    {
      name: 'Georgian Lari',
      abbrv: 'GEL'
    },
    {
      name: 'Guernsey Pound',
      abbrv: 'GGP'
    },
    {
      name: 'Ghanaian Cedi (Obsolete)',
      abbrv: 'GHC'
    },
    {
      name: ' Ghanaian Cedi',
      abbrv: 'GHS'
    },
    {
      name: 'Gibraltar Pound',
      abbrv: 'GIP'
    },
    {
      name: 'Gambian Dalasi',
      abbrv: 'GMD'
    },
    {
      name: 'Guinean Franc',
      abbrv: 'GNF'
    },
    {
      name: 'Guatemalan Quetzal',
      abbrv: 'GTQ'
    },
    {
      name: 'Guyanese Dollar',
      abbrv: 'GYD'
    },
    {
      name: 'Hong Kong Dollar',
      abbrv: 'HKD'
    },
    {
      name: 'Honduran Lempira',
      abbrv: 'HNL'
    },
    {
      name: 'Croatian Kuna',
      abbrv: 'HRK'
    },
    {
      name: 'Haitian Gourde',
      abbrv: 'HTG'
    },
    {
      name: 'Hungarian Forint',
      abbrv: 'HUF'
    },
    {
      name: 'Indonesian Rupiah',
      abbrv: 'IDR'
    },
    {
      name: 'Israeli New Shekel',
      abbrv: 'ILS'
    },
    {
      name: 'Isle of Man Pound',
      abbrv: 'IMP'
    },
    {
      name: 'Indian Rupee',
      abbrv: 'INR'
    },
    {
      name: 'Iraqi Dinar',
      abbrv: 'IQD'
    },
    {
      name: 'Iranian Rial',
      abbrv: 'IRR'
    },
    {
      name: 'Icelandic Króna',
      abbrv: 'ISK'
    },
    {
      name: 'Jersey Pound',
      abbrv: 'JEP'
    },
    {
      name: 'Jamaican Dollar',
      abbrv: 'JMD'
    },
    {
      name: 'Jordanian Dinar',
      abbrv: 'JOD'
    },
    {
      name: 'Japanese Yen',
      abbrv: 'JPY'
    },
    {
      name: 'Kenyan Shilling',
      abbrv: 'KES'
    },
    {
      name: 'Kyrgyzstani Som',
      abbrv: 'KGS'
    },
    {
      name: 'Cambodian Riel',
      abbrv: 'KHR'
    },
    {
      name: 'Comorian Franc',
      abbrv: 'KMF'
    },
    {
      name: 'North Korean Won',
      abbrv: 'KPW'
    },
    {
      name: 'South Korean Won',
      abbrv: 'KRW'
    },
    {
      name: ' Kuwaiti Dinar',
      abbrv: 'KWD'
    },
    {
      name: 'Cayman Islands Dollar',
      abbrv: 'KYD'
    },
    {
      name: 'Kazakhstani Tenge',
      abbrv: 'KZT'
    },
    {
      name: 'Laotian Kip',
      abbrv: 'LAK'
    },
    {
      name: 'Lebanese Pound',
      abbrv: 'LBP'
    },
    {
      name: 'Sri Lankan Rupee',
      abbrv: 'LKR'
    },
    {
      name: 'Liberian Dollar',
      abbrv: 'LRD'
    },
    {
      name: 'Lesotho Loti',
      abbrv: 'LSL'
    },
    {
      name: 'Lithuanian Litas (Obsolete)',
      abbrv: 'LTL'
    },
    {
      name: 'Latvian Lats (Obsolete)',
      abbrv: 'LVL'
    },
    {
      name: 'Libyan Dinar',
      abbrv: 'LYD'
    },
    {
      name: 'Moroccan Dirham',
      abbrv: 'MAD'
    },
    {
      name: 'Moldovan Leu',
      abbrv: 'MDL'
    },
    {
      name: 'Malagasy Ariary',
      abbrv: 'MGA'
    },
    {
      name: 'Macedonian Denar',
      abbrv: 'MKD'
    },
    {
      name: 'Burmese Kyat',
      abbrv: 'MMK'
    },
    {
      name: 'Mongolian Tugrik',
      abbrv: 'MNT'
    },
    {
      name: 'Macanese Pataca',
      abbrv: 'MOP'
    },
    {
      name: 'Mauritanian Ouguiya',
      abbrv: 'MRO'
    },
    {
      name: 'Mauritanian Ouguiya (New)',
      abbrv: 'MRU'
    },
    {
      name: 'Maltese Lira (Obsolete)',
      abbrv: 'MTL'
    },
    {
      name: 'Mauritian Rupee',
      abbrv: 'MUR'
    },
    {
      name: 'Maldivian Rufiyaa',
      abbrv: 'MVR'
    },
    {
      name: 'Malawian Kwacha',
      abbrv: 'MWK'
    },
    {
      name: 'Mexican Peso',
      abbrv: 'MXN'
    },
    {
      name: 'Malaysian Ringgit',
      abbrv: 'MYR'
    },
    {
      name: 'Mozambican Metical',
      abbrv: 'MZN'
    },
    {
      name: 'Namibian Dollar',
      abbrv: 'NAD'
    },
    {
      name: 'Nigerian Naira',
      abbrv: 'NGN'
    },
    {
      name: 'Nicaraguan Córdoba',
      abbrv: 'NIO'
    },
    {
      name: 'Norwegian Krone',
      abbrv: 'NOK'
    },
    {
      name: 'Nepalese Rupee',
      abbrv: 'NPR'
    },
    {
      name: 'New Zealand Dollar',
      abbrv: 'NZD'
    },
    {
      name: 'Omani Rial',
      abbrv: 'OMR'
    },
    {
      name: 'Panamanian Balboa',
      abbrv: 'PAB'
    },
    {
      name: 'Peruvian Nuevo Sol',
      abbrv: 'PEN'
    },
    {
      name: 'Papua New Guinean Kina',
      abbrv: 'PGK'
    },
    {
      name: 'Philippine Peso',
      abbrv: 'PHP'
    },
    {
      name: 'Pakistani Rupee',
      abbrv: 'PKR'
    },
    {
      name: 'Polish Złoty',
      abbrv: 'PLN'
    },
    {
      name: 'Paraguayan Guarani',
      abbrv: 'PYG'
    },
    {
      name: 'Qatari Riyal',
      abbrv: 'QAR'
    },
    {
      name: 'Romanian Leu',
      abbrv: 'RON'
    },
    {
      name: 'Serbian Dinar',
      abbrv: 'RSD'
    },
    {
      name: 'Russian Ruble',
      abbrv: 'RUB'
    },
    {
      name: 'Rwandan Franc',
      abbrv: 'RWF'
    },
    {
      name: 'Saudi Riyal',
      abbrv: 'SAR'
    },
    {
      name: 'Solomon Islands Dollar',
      abbrv: 'SBD'
    },
    {
      name: 'Seychellois Rupee',
      abbrv: 'SCR'
    },
    {
      name: 'Sudanese Pound',
      abbrv: 'SDG'
    },
    {
      name: 'Swedish Krona',
      abbrv: 'SEK'
    },
    {
      name: 'Singapore Dollar',
      abbrv: 'SGD'
    },
    {
      name: 'Saint Helena Pound',
      abbrv: 'SHP'
    },
    {
      name: 'Slovak Koruna (Obsolete)',
      abbrv: 'SKK'
    },
    {
      name: 'Sierra Leonean Leone',
      abbrv: 'SLL'
    },
    {
      name: 'Somali Shilling',
      abbrv: 'SOS'
    },
    {
      name: 'Surinamese Dollar',
      abbrv: 'SRD'
    },
    {
      name: 'South Sudanese Pound',
      abbrv: 'SSP'
    },
    {
      name: 'São Tomé and Príncipe Dobra',
      abbrv: 'STD'
    },
    {
      name: 'Salvadoran Colón',
      abbrv: 'SVC'
    },
    {
      name: 'Syrian Pound',
      abbrv: 'SYP'
    },
    {
      name: 'Swazi Lilangeni',
      abbrv: 'SZL'
    },
    {
      name: 'Thai Baht',
      abbrv: 'THB'
    },
    {
      name: 'Tajikistani Somoni',
      abbrv: 'TJS'
    },
    {
      name: 'Turkmenistani Manat',
      abbrv: 'TMM'
    },
    {
      name: 'Turkmenistan Manat',
      abbrv: 'TMT'
    },
    {
      name: 'Tunisian Dinar',
      abbrv: 'TND'
    },
    {
      name: 'Tongan Pa\'anga',
      abbrv: 'TOP'
    },
    {
      name: 'Turkish Lira',
      abbrv: 'TRY'
    },
    {
      name: 'Trinidad and Tobago Dollar',
      abbrv: 'TTD'
    },
    {
      name: 'New Taiwan Dollar',
      abbrv: 'TWD'
    },
    {
      name: 'Tanzanian Shilling',
      abbrv: 'TZS'
    },
    {
      name: 'Ukrainian Hryvnia',
      abbrv: 'UAH'
    },
    {
      name: 'Ugandan Shilling',
      abbrv: 'UGX'
    },
    {
      name: 'United States Dollar',
      abbrv: 'USD'
    },
    {
      name: 'Uruguayan Peso',
      abbrv: 'UYU'
    },
    {
      name: 'Uzbekistani Som',
      abbrv: 'UZS'
    },
    {
      name: 'Venezuelan Bolívar',
      abbrv: 'VEF'
    },
    {
      name: 'Venezuelan Bolívar Soberano',
      abbrv: 'VES'
    },
    {
      name: 'Vietnamese Đồng',
      abbrv: 'VND'
    },
    {
      name: 'Vanuatu Vatu',
      abbrv: 'VUV'
    },
    {
      name: 'Samoan Tala',
      abbrv: 'WST'
    },
    {
      name: 'Central African CFA Franc',
      abbrv: 'XAF'
    },
    {
      name: 'Silver Ounce (Troy)',
      abbrv: 'XAG'
    },
    {
      name: 'Gold Ounce (Troy)',
      abbrv: 'XAU'
    },
    {
      name: 'European Composite Unit (EURCO)',
      abbrv: 'XBA'
    },
    {
      name: 'European Monetary Unit (E.M.U.-6)',
      abbrv: 'XBB'
    },
    {
      name: 'European Unit of Account 9 (E.U.A.-9)',
      abbrv: 'XBC'
    },
    {
      name: 'European Unit of Account 17 (E.U.A.-17)',
      abbrv: 'XBD'
    },
    {
      name: 'East Caribbean Dollar',
      abbrv: 'XCD'
    },
    {
      name: ' International Monetary Fund (IMF) Special Drawing Rights',
      abbrv: 'XDR'
    },
    {
      name: 'UIC-Franc',
      abbrv: 'XFU'
    },
    {
      name: 'West African CFA Franc',
      abbrv: 'XOF'
    },
    {
      name: 'Palladium Ounce (Troy)',
      abbrv: 'XPD'
    },
    {
      name: 'CFP Franc',
      abbrv: 'XPF'
    },
    {
      name: 'Platinum Ounce (Troy)',
      abbrv: 'XPT'
    },
    {
      name: 'Codes specifically reserved for testing purposes',
      abbrv: 'XTS'
    },
    {
      name: 'Japanese Yen',
      abbrv: 'YEN'
    },
    {
      name: 'Yemeni Rial',
      abbrv: 'YER'
    },
    {
      name: 'South African Rand',
      abbrv: 'ZAR'
    },
    {
      name: 'Zambian Kwacha (Obsolete)',
      abbrv: 'ZMK'
    },
    {
      name: 'Zambian Kwacha',
      abbrv: 'ZMW'
    },
    {
      name: 'Zimbabwean Dollar (Obsolete)',
      abbrv: 'ZWD'
    },
    {
      name: 'Zimbabwean Dollar (Obsolete)',
      abbrv: 'ZWL'
    },
    {
      name: 'Zimbabwean Dollar (Obsolete)',
      abbrv: 'ZWN'
    },
    {
      name: 'Zimbabwean Dollar (Obsolete)',
      abbrv: 'ZWR'
    }
  ]
)
