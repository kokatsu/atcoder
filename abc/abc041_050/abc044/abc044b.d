import std;

void main() {
    auto w = readln.chomp.to!(dchar[]);

    w.sort;

    auto g = w.group.array;

    writeln(g.all!"a[1] % 2 == 0" ? "Yes" : "No");
}
