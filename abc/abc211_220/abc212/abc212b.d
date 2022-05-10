import std;

void main() {
    auto X = readln.chomp;

    auto Y = X.map!(x => x - '0').array;

    bool isWeak = (Y.dup.uniq.array.length == 1);

    int cnt;
    foreach (i; 1 .. 4) {
        if ((Y[i-1] + 1) % 10 == Y[i]) ++cnt;
    }

    isWeak |= (cnt >= 3);

    writeln(isWeak ? "Weak" : "Strong");
}