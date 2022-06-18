import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int res;
    auto squares = new int[](4);
    foreach (a; A) {
        ++squares[0];

        foreach_reverse (i; 0 .. 4) {
            if (i + a >= 4) res += squares[i];
            else squares[i+a] += squares[i];

            squares[i] = 0;
        }
    }

    res.writeln;
}