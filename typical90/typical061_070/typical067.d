import std;

void main() {
    auto input = readln.chomp.split;
    auto N = input[0];
    auto K = input[1].to!long;

    foreach (_; 0 .. K) {
        auto oct = N.to!long(8);

        auto non = oct.to!string(9).to!(dchar[]);
        foreach (ref n; non) {
            if (n == '8')
                n = '5';
        }

        N = non.to!string;
    }

    N.writeln;
}
