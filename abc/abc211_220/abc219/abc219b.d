import std;

void main() {
    auto S1 = readln.chomp.to!(dchar[]);
    auto S2 = readln.chomp.to!(dchar[]);
    auto S3 = readln.chomp.to!(dchar[]);
    string T = readln.chomp;

    dchar[] res;
    foreach (t; T) {
        if (t == '1') {
            res ~= S1;
        }
        else if (t == '2') {
            res ~= S2;
        }
        else {
            res ~= S3;
        }
    }

    res.writeln;
}