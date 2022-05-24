import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = new string[](N);
    auto T = new int[](N);
    foreach (i; 0 .. N) {
        auto input = readln.chomp.split;
        S[i] = input[0];
        T[i] = input[1].to!int;
    }

    zip(T, S).sort!"a[0] > b[0]";

    string res = S[1];
    res.writeln;
}