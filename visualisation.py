import matplotlib.pyplot as plt
import main

result_data_1 = {
    'Sport name': [i[0] for i in main.data_1],
    'Quantity of sportsmen': [i[1] for i in main.data_1]
}

result_data_2 = {
    'Medal': [i[0] for i in main.data_2],
    'Quantity of sportsmen': [i[1] for i in main.data_2]
}

result_data_3 = {
    'Games': [i[0] for i in main.data_3],
    'Quantity of sportsmen': [i[1] for i in main.data_3]
}


plt.bar(result_data_1['Sport name'], result_data_1['Quantity of sportsmen'], width=0.5, color='green')
plt.xlabel('Sport name')
plt.ylabel('Sportsman quantity')
plt.show()

fig, ax = plt.subplots()
ax.pie(result_data_2['Quantity of sportsmen'], labels=result_data_2['Medal'], normalize=True)
plt.axis('equal')
plt.show()

plt.scatter(result_data_3['Games'], result_data_3['Quantity of sportsmen'], marker='+', color='red')
plt.show()
