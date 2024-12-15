import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int[] odds, evens;
    foreach (a; A) {
        (a % 2 == 1 ? odds : evens) ~= a;
    }

    int res = -1;

    if (odds.length > 1) {
        odds.sort!"a > b";
        res = max(res, odds[0] + odds[1]);
    }

    if (evens.length > 1) {
        evens.sort!"a > b";
        res = max(res, evens[0] + evens[1]);
    }

    res.writeln;
}
