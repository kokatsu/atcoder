import std;

void main() {
    long N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(long[]);

    long[long] dict;
    dict[0] = 1;

    long res, num;
    foreach (x; a) {
        num += x;
        if (num - N in dict) res += dict[num-N];
        ++dict[num];
    }

    res.writeln;
}