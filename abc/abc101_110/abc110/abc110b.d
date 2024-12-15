import std;

void main() {
    int N, M, X, Y;
    readf("%d %d %d %d\n", N, M, X, Y);

    auto x = readln.chomp.split.to!(int[]);
    auto y = readln.chomp.split.to!(int[]);

    x ~= X, y ~= Y;
    auto u = x.maxElement, v = y.minElement;

    writeln(u < v ? "No War" : "War");
}
