import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    A.sort;

    auto G = A.group.array;

    writeln(G.length == 2 ? "Yes" : "No");
}
