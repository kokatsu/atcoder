import std;

void main() {
    int n = readln.strip.split.to!(int[])[0];

    string[string] dict;
    foreach (_; 0 .. n) {
        auto a = readln.strip.split.to!(string[]);

        dict[a[0]] = a[1];
    }


    int m = readln.strip.split.to!(int[])[0];

    auto c = new string[](m);
    foreach (i; 0 .. m) {
        c[i] = readln.strip.split.to!(string[])[0];

        if (c[i] in dict) {
            c[i] = dict[c[i]];
        }
    }

    string res = c.join;
    res.writeln;
}