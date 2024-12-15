import std;

string toTernary(int number, int digits) {
    string result;

    do {
        result = (number % 3).to!string ~ result;
        number /= 3;
    }
    while (number > 0);

    if (result.length < digits) {
        result = replicate("0", digits - result.length) ~ result;
    }

    return result;
}

string makePassword(string ternary) {
    string result;

    foreach (t; ternary) {
        if (t == '0')
            result ~= 'a';
        else if (t == '1')
            result ~= 'b';
        else
            result ~= 'c';
    }

    return result;
}

void main() {
    int N;
    readf("%d\n", N);

    string[] list = iota(3 ^^ N).map!(i => makePassword(toTernary(i, N))).array;

    string res = format("%-(%s\n%)", list);
    res.writeln;
}
