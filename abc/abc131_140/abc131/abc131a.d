import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    auto G = S.group.array;

    writeln(G.length == 4 ? "Good" : "Bad");
}
