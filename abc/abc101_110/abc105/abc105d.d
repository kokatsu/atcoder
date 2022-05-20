import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);

    long[long] list;
    list[0] = 1;

    long res, num;
    foreach (a; A) {
        num = (num + a) % M;
        if (num in list) res += list[num];
        ++list[num];
    }

    res.writeln;
}