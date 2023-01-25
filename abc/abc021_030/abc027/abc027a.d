import std;

void main() {
    auto l = readln.chomp.split.to!(int[]);

    auto g = l.sort.group.array;
    foreach (x; g) {
        if (x[1] % 2 == 1) x[0].writeln;
    }
}