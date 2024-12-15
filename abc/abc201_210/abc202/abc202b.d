import std;

void main() {
    auto S = readln.chomp;

    foreach_reverse (s; S) {
        dchar d;
        if (s == '6')
            d = '9';
        else if (s == '9')
            d = '6';
        else
            d = s;

        d.write;
    }
    writeln;
}
