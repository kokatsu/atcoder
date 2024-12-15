import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long[long] cnts;
    cnts[0] = 1;

    long res, S;
    foreach (a; A) {
        S += a;

        if (S in cnts)
            res += cnts[S];

        ++cnts[S];
    }

    res.writeln;
}
