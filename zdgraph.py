import networkx as nx
import matplotlib.pyplot as plt

def zero_divisor_graph(n):
    G = nx.Graph()

    # Add nodes (integers modulo n)
    for i in range(n):
        G.add_node(i)

    # Add edges for zero divisors
    for i in range(n):
        for j in range(n):
            if (i * j) % n == 0 and i != 0 and j != 0:
                G.add_edge(i, j)

    return G

def draw_zero_divisor_graph(G):
    pos = nx.spring_layout(G)
    nx.draw(G, pos, with_labels=True, node_size=1000, node_color='lightblue', font_size=10, font_color='black')
    plt.title("Zero Divisor Graph")
    plt.show()

if __name__ == "__main__":
    n = int(input("Enter the value of n: "))
    zero_divisor_graph = zero_divisor_graph(n)
    draw_zero_divisor_graph(zero_divisor_graph)


