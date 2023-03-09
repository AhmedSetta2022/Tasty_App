package com.example.myapplication

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.Menu
import android.view.MenuInflater
import android.view.MenuItem
import android.widget.ArrayAdapter
import android.widget.AutoCompleteTextView
import android.widget.Button
import android.widget.Toast
import androidx.core.widget.addTextChangedListener
import com.google.android.material.textfield.TextInputEditText


    class MainActivity : AppCompatActivity() {
        private val EgyptianPound = "Egyptian Pound"
        private val AmericanDollar = "American Dollar"
        private val AUD = "AUD"
        private val GBP ="GBP"
        private val AES ="AES"
        private val EA ="EA"
        private val SOP ="SOP"
        val values = mapOf(
            AmericanDollar to 1.0,
            AUD to .645,
            GBP to 1.11,
            EgyptianPound to 19.58,
            AES to 1.23,
            EA to 5.1 ,
            SOP to 3.25

        )
        lateinit var  convbtn:Button
        lateinit var  fromdropdownmenu : AutoCompleteTextView
        lateinit var  todropdownmenu:AutoCompleteTextView
        lateinit var  amountET :TextInputEditText
        lateinit var  ResultET:TextInputEditText
        override fun onCreate(savedInstanceState: Bundle?) {
            super.onCreate(savedInstanceState)
            setContentView(R.layout.page1)
            initlaizeVariables()
            Populatedropmenu()
            amountET.addTextChangedListener { calcuteopreation() }
            fromdropdownmenu.setOnItemClickListener { parent, view, position, id -> calcuteopreation() }
            todropdownmenu.setOnItemClickListener { parent, view, position, id -> calcuteopreation()  }


            convbtn.setOnClickListener { calcuteopreation() }
        }
        private fun initlaizeVariables(){
            convbtn = findViewById(R.id.Conv_Button)
            fromdropdownmenu = findViewById(R.id.from_currency_drop_menu)
            todropdownmenu=findViewById(R.id.to_currency_drop_menu)
            amountET =findViewById(R.id.amount_Input_ET)
            ResultET =findViewById(R.id.Result_Input_ET)
        }
        private fun calcuteopreation(){
            if (amountET.text.toString()!="") {
                val amountofinput = amountET.text.toString().toDouble()
                val tovalues = values[todropdownmenu.text.toString()]
                val fromvalues = values[fromdropdownmenu.text.toString()]
                val ResultofCalcut = amountofinput.times(tovalues!!.div(fromvalues!!))
                val formattedResult = String.format("%.2f",ResultofCalcut)
                ResultET.setText(formattedResult)
            } else {
                amountET.setError("Number Required")
            }
        }
        private fun Populatedropmenu(){
            val listofcountry = listOf(EgyptianPound , AmericanDollar ,AUD , GBP, AES , EA , SOP)
            val adapter =ArrayAdapter(this,R.layout.from_dropmenu,listofcountry)
            fromdropdownmenu.setAdapter(adapter)
            todropdownmenu.setAdapter(adapter)
        }

        override fun onCreateOptionsMenu(menu: Menu?): Boolean {
            menuInflater.inflate(R.menu.optionsmenu,menu)
            return true
        }

        override fun onOptionsItemSelected(item: MenuItem): Boolean {
            when(item.itemId){
                R.id.shareitem ->{
                    Toast.makeText(this,"B7bk ya AYA <3",Toast.LENGTH_SHORT).show()}
                R.id.contactus ->{ Toast.makeText(this,"B7bk ya 7yati <3",Toast.LENGTH_SHORT).show()}
                R.id.setting ->{ Toast.makeText(this,"B7bk ya 3omry <3",Toast.LENGTH_SHORT).show()}
            }
            return true
        }

    }

