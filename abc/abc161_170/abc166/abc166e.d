import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long[long] list;
    long res;
    foreach (i, a; A) {
        long num = a - i - 1;
        if (num in list)
            res += list[num];

        num -= a * 2;
        ++list[num];
    }

    res.writeln;
}
