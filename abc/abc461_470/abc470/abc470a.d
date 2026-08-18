import std;

void main() {
    int N;
    readfln("%d", N);

    string[] A = iota(1, N + 1).map!(i => i % 3 == 0 ? "Fizz" : i.to!string).array;

    string res = format("%-(%s\n%)", A);
    res.writeln;
}
