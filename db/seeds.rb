physicians = []

10.times do |i|
  physicians << Physician.create(name: "doctor #{i + 1}")
end

patients = []
20.times do |i|
  patients << Patient.create(name: "Patient #{i + 1}")
end

20.times do |i|

  physician = physicians[i % 10]

  Appointment.create(
    physician: physician,
    patient: patients[i],
    start_date: Time.now + (i + 1).days
  )
end
