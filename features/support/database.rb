# coding: utf-8

DATABASE = {
    name: {
        name1: "Brenno Kevyn",
        name2: "Urso Brabo da Silva",
        name3: Faker::Name.name
    },

    salary: {
        salary1: "50000",
        salary2: "99999",
        salary3: Faker::Number.number.to_s
    },
    age: {
        age1: "23",
        age2: "44",
        age3: Faker::Number.number(digits: 2).to_s
    }
}