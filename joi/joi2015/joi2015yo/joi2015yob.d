import std;

void main() {
    int N, M;
    readf("%d\n%d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);
    --A[];

    auto res = new int[](N);
    foreach (a; A) {
        auto B = readln.chomp.split.to!(int[]);
        --B[];

        foreach (i, b; B) {
            if (b == a)
                ++res[i];
            else
                ++res[a];
        }
    }

    writefln("%(%s\n%)", res);
}
