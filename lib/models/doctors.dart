class Doctors {
  final String name;
  final String description;
  final String imageUrl;

  Doctors(this.name, this.description, this.imageUrl);

  static List<Doctors> giveMeHospitals() {
    return [
      Doctors('Ahmad Ali', 'I am a doctor',
          'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
      Doctors('Digfeer', 'I am a doctor',
          'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
      Doctors('Banaadir', 'I am a doctor',
          'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
      Doctors('Somali Syrian', 'I am a doctor',
          'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
      Doctors('Yardemeli', 'I am a doctor',
          'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
      Doctors('Madina', 'I am a doctor',
          'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
      Doctors('Aden Ade', 'I am a doctor',
          'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
    ];
  }
}
